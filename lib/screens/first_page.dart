import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:floating_bubbles/floating_bubbles.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:math' as math;

import 'package:learn_kurmanji_2022/screens/lesson_list.dart';
import 'package:learn_kurmanji_2022/screens/song_list.dart';
import 'package:learn_kurmanji_2022/components/rounded_button_tile.dart';

class FirstPage extends StatefulWidget {
  static const String id = 'first_page';

  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> with SingleTickerProviderStateMixin {
  // Constants
  static const _backgroundColor = Color(0xff2C2F31);
  static const _textColor = Color(0xffE0E0E0);
  static const _glowDuration = Duration(seconds: 4);
  static const _bubbleOpacity = 20;
  static const _bubbleSizeFactor = 0.09;

  // Animation properties
  late final AnimationController _glowController;
  late final Animation<Color?> _glowAnimation;

  final List<Color> _glowColors = [
    Colors.purple,
    Colors.blue,
    Colors.teal,
    Colors.green,
    Colors.amber,
    Colors.orange,
    Colors.purple,
  ].map((color) => color.withOpacity(0.05)).toList();

  final AudioPlayer _audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    _initializeAnimations();
  }

  void _initializeAnimations() {
    _glowController = AnimationController(
      duration: _glowDuration,
      vsync: this,
    )..repeat();

    _glowAnimation = TweenSequence<Color?>(
      _createGlowTweenSequence(),
    ).animate(CurvedAnimation(
      parent: _glowController,
      curve: Curves.easeInOut,
    ));
  }

  List<TweenSequenceItem<Color?>> _createGlowTweenSequence() {
    return _glowColors.asMap().entries.map((entry) {
      final nextIndex = (entry.key + 1) % _glowColors.length;
      return TweenSequenceItem(
        weight: 1.0,
        tween: ColorTween(
          begin: _glowColors[entry.key],
          end: _glowColors[nextIndex],
        ),
      );
    }).toList();
  }

  Future<void> _playTapSound() async {
    try {
      final player = AudioPlayer();
      await player.play(AssetSource('sounds/card_tap_1.mp3'));
    } catch (e) {
      debugPrint('Error playing sound: $e');
    }
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    _glowController.dispose();
    super.dispose();
  }

  Widget _buildGlowingButton({
    required Widget child,
    required VoidCallback onTap,
  }) {
    return AnimatedBuilder(
      animation: _glowAnimation,
      builder: (context, child) {
        return GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                for (double i = 0; i < 360; i += 60)
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
          ),
        );
      },
      child: child,
    );
  }

  Widget _buildDescriptionText(String text) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.notoSansArabic(
        fontSize: 16,
        color: _textColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Stack(
          children: [
            Positioned.fill(
              child: FloatingBubbles.alwaysRepeating(
                noOfBubbles: 10,
                sizeFactor: _bubbleSizeFactor,
                opacity: _bubbleOpacity,
                shape: BubbleShape.circle,
                paintingStyle: PaintingStyle.fill,
                strokeWidth: 10,
                colorsOfBubbles: const [Colors.white, Colors.blue],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedBuilder(
                  animation: _glowAnimation,
                  builder: (context, child) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          for (double i = 0; i < 360; i += 60)
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
                      child: RoundedButtonTileImage(
                        imageAsset: 'assets/images/song-button-three.jpg',
                        height: 200,
                        text: 'گۆرانی',
                        onTap: () async {
                          HapticFeedback.mediumImpact();
                          await _playTapSound();
                          Navigator.pushNamed(context, SongList.id);
                        },
                      ),
                    );
                  },
                ),
                _buildDescriptionText(
                  'کۆمەڵە گۆرانییەکی تازە و کۆن بە زمانی کوردی کرمانجی',
                ),
                const SizedBox(height: 50),
                RoundedButtonTileImage(
                  imageAsset: 'assets/images/note-icon.jpg',
                  height: 105,
                  text: 'وانە',
                  onTap: () {
                    HapticFeedback.mediumImpact();
                    Navigator.pushNamed(context, LessonsList.id);
                  },
                ),
                _buildDescriptionText(
                  'چەند وانەیەکی کورت و بەسوود بۆ فێربوونی زمانی کوردی کرمانجی',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
