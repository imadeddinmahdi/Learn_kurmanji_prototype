import 'package:flutter/material.dart';
import 'package:learn_kurmanji_2022/components/rounded_button_tile.dart';
import 'package:learn_kurmanji_2022/screens/lesson_list.dart';
import 'package:learn_kurmanji_2022/screens/song_list.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:floating_bubbles/floating_bubbles.dart';
import 'dart:math' as math;

class FirstPage extends StatefulWidget {
  static const String id = 'first_page';

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> with SingleTickerProviderStateMixin {
  late AnimationController _glowController;
  late Animation<Color?> _glowAnimation;
  final List<Color> glowColors = [
    Colors.purple.withOpacity(0.05),
    Colors.blue.withOpacity(0.05),
    Colors.teal.withOpacity(0.05),
    Colors.green.withOpacity(0.05),
    Colors.amber.withOpacity(0.05),
    Colors.orange.withOpacity(0.05),
    Colors.purple.withOpacity(0.05),
  ];

  @override
  void initState() {
    super.initState();
    _glowController = AnimationController(
      duration: const Duration(seconds: 4), // Slower rotation
      vsync: this,
    )..repeat();

    _glowAnimation = TweenSequence<Color?>(
      glowColors.asMap().entries.map((entry) {
        final nextIndex = (entry.key + 1) % glowColors.length;
        return TweenSequenceItem(
          weight: 1.0,
          tween: ColorTween(
            begin: glowColors[entry.key],
            end: glowColors[nextIndex],
          ),
        );
      }).toList(),
    ).animate(CurvedAnimation(
      parent: _glowController,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _glowController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2C2F31),
      //backgroundColor: Colors.grey,
      body: Container(
          margin: const EdgeInsets.all(10),
          child: Stack(
            children: [
              Positioned.fill(
                child: FloatingBubbles.alwaysRepeating(noOfBubbles: 10, sizeFactor: 0.09, opacity: 20, shape: BubbleShape.circle, paintingStyle: PaintingStyle.fill, strokeWidth: 10, colorsOfBubbles: const [
                  Colors.white,
                  Colors.blue,
                ]),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedBuilder(
                    animation: _glowAnimation,
                    builder: (context, child) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            for (double i = 0; i < 360; i += 60) // Create 6 glow points
                              BoxShadow(
                                color: _glowAnimation.value ?? Colors.transparent,
                                blurRadius: 8,
                                spreadRadius: 0.1,
                                offset: Offset(
                                  math.cos((i + _glowController.value * 360) * math.pi / 180) * 2,
                                  math.sin((i + _glowController.value * 360) * math.pi / 180) * 2,
                                ),
                              ),
                          ],
                        ),
                        child: child,
                      );
                    },
                    child: RoundedButtonTileImage(
                      imageAsset: 'assets/images/song-button-three.jpg',
                      height: 200,
                      onTap: () {
                        Navigator.pushNamed(context, SongList.id);
                      },
                      text: 'گۆرانی',
                    ),
                  ),
                  Text(
                    'کۆمەڵە گۆرانییەکی تازە و کۆن بە زمانی کوردی کرمانجی',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.notoSansArabic(
                      fontSize: 16,
                      color: const Color(0xffE0E0E0),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  RoundedButtonTileImage(
                    imageAsset: 'assets/images/note-icon.jpg',
                    height: 105,
                    onTap: () {
                      print('lessons pressed');
                      Navigator.pushNamed(context, LessonsList.id);
                    },
                    text: 'وانە',
                  ),
                  Text(
                    'چەند وانەیەکی کورت و بەسوود بۆ فێربوونی زمانی کوردی کرمانجی',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.notoSansArabic(color: const Color(0xffE0E0E0), fontSize: 16),
                  ),
                  // RoundedButtonTile(
                  //   height: 80,
                  //   text: 'وشە',
                  //   onTap: () {
                  //     print('vocab pressed');
                  //     Navigator.pushNamed(context, Vocab.id);
                  //   },
                  // ),
                ],
              ),
            ],
          )),
    );
  }
}
