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
      final double start = -0.05; // Increased movement range
      final double end = 0.05;

      _slideAnimation = Tween<Offset>(
        begin: horizontal ? Offset(start, 0) : Offset(0, start),
        end: horizontal ? Offset(end, 0) : Offset(0, end),
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
            child: Container(
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
            child: Container(
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
  final VoidCallback onTap;
  final bool isDragging;

  const SongCard({
    Key? key,
    required this.image,
    required this.onTap,
    required this.subtitle,
    required this.title,
    this.isDragging = false,
  }) : super(key: key);

  @override
  State<SongCard> createState() => _SongCardState();
}

class _SongCardState extends State<SongCard> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _rippleAnimation;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );

    // More dramatic scale animation
    _scaleAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(begin: 1.0, end: 0.85).chain(CurveTween(curve: Curves.easeOut)),
        weight: 30,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 0.85, end: 1.1).chain(CurveTween(curve: Curves.easeIn)),
        weight: 30,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 1.1, end: 1.0).chain(CurveTween(curve: Curves.bounceOut)),
        weight: 40,
      ),
    ]).animate(_controller);

    // Bright flash animation
    _colorAnimation = ColorTween(
      begin: Colors.transparent,
      end: Colors.white.withOpacity(0.6),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.4, curve: Curves.easeOut),
      ),
    );

    // Ripple animation
    _rippleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.2, 0.7, curve: Curves.easeOut),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _controller.reset();
  }

  Future<void> _handleTap() async {
    await _controller.forward(from: 0.0);
    await _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => _controller.forward(),
      onTapUp: (_) => _controller.reverse(),
      onTapCancel: () => _controller.reverse(),
      onTap: widget.onTap,
      child: AnimatedBuilder(
        animation: Listenable.merge([_controller, _rippleAnimation]),
        builder: (context, child) {
          return Transform.scale(
            scale: _scaleAnimation.value,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                border: widget.isDragging ? Border.all(color: Colors.yellow, width: 2.0) : null,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  // Base card
                  ClipRRect(
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
                        ],
                      ),
                    ),
                  ),
                  // Flash overlay
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        color: _colorAnimation.value,
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                  // Ripple effect
                  if (_rippleAnimation.value > 0)
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: CustomPaint(
                          painter: RipplePainter(
                            color: Colors.white.withOpacity(0.3),
                            animationValue: _rippleAnimation.value,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          );
        },
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
