import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedSongImage extends StatefulWidget {
  final String image;

  const AnimatedSongImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  State<AnimatedSongImage> createState() => _AnimatedSongImageState();
}

class _AnimatedSongImageState extends State<AnimatedSongImage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _scaleAnimation;
  bool _useSlideAnimation = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5), // Fixed duration for testing
      vsync: this,
    )..repeat(reverse: true); // Make it continuously animate

    // Randomly choose between slide or scale animation
    _useSlideAnimation = Random().nextBool();

    if (_useSlideAnimation) {
      // Random slide direction
      final bool horizontal = Random().nextBool();
      const double start = -0.05; // Increased movement range
      const double end = 0.05;

      _slideAnimation = Tween<Offset>(
        begin: horizontal ? const Offset(start, 0) : const Offset(0, start),
        end: horizontal ? const Offset(end, 0) : const Offset(0, end),
      ).animate(CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ));
    } else {
      // More noticeable scale animation
      _scaleAnimation = Tween<double>(
        begin: 1.0,
        end: 1.1, // Increased scale range
      ).animate(CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ));
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        if (_useSlideAnimation) {
          return SlideTransition(
            position: _slideAnimation,
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: FittedBox(
                fit: BoxFit.cover,
                child: child,
              ),
            ),
          );
        } else {
          return Transform.scale(
            scale: _scaleAnimation.value,
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: FittedBox(
                fit: BoxFit.cover,
                child: child,
              ),
            ),
          );
        }
      },
      child: Image.asset(
        widget.image,
        fit: BoxFit.cover,
      ),
    );
  }
}

class SongCard extends StatefulWidget {
  final String image;
  final String title;
  final String subtitle;
  final bool isDragging;
  final VoidCallback onTap;
  final int index;

  const SongCard({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.isDragging,
    required this.onTap,
    required this.index,
  }) : super(key: key);

  @override
  State<SongCard> createState() => _SongCardState();
}

class _SongCardState extends State<SongCard> with SingleTickerProviderStateMixin {
  bool _isHolding = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          border: (_isHolding || widget.isDragging) ? Border.all(color: Colors.yellow, width: 2.0) : null,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
            color: const Color(0xff595959),
            child: Row(
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: AnimatedSongImage(image: widget.image),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(left: 15, top: 10),
                    height: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          widget.subtitle,
                          style: const TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                // Drag handle at the end
                ReorderableDragStartListener(
                  index: widget.index,
                  child: GestureDetector(
                    onLongPressStart: (_) {
                      setState(() {
                        _isHolding = true;
                      });
                    },
                    onLongPressEnd: (_) {
                      setState(() {
                        _isHolding = false;
                      });
                    },
                    child: Container(
                      width: 40,
                      height: 120,
                      decoration: const BoxDecoration(
                        color: Color(0xff595959),
                        borderRadius: BorderRadius.horizontal(right: Radius.circular(25)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.drag_handle,
                            color: Colors.grey.shade400,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Custom painter for ripple effect
class RipplePainter extends CustomPainter {
  final Color color;
  final double animationValue;

  RipplePainter({required this.color, required this.animationValue});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final double radius = size.width * animationValue;
    final Offset center = Offset(size.width / 2, size.height / 2);

    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(RipplePainter oldDelegate) {
    return animationValue != oldDelegate.animationValue;
  }
}
