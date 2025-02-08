import 'package:flutter/material.dart';
import 'package:learn_kurmanji_2022/components/player_class.dart';
import 'package:learn_kurmanji_2022/components/lyrics.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:learn_kurmanji_2022/others/utils.dart';

class PlayerUI extends StatefulWidget {
  static const String id = 'player_ui';

  final String song;
  final int selectedCard;
  final String singer;
  final String songName;
  const PlayerUI({required this.selectedCard, required this.song, required this.songName, required this.singer});

  @override
  State<PlayerUI> createState() => _PlayerUIState();
}

class _PlayerUIState extends State<PlayerUI> with SingleTickerProviderStateMixin {
  bool _isLoading = true;
  late AnimationController _borderAnimationController;
  late Animation<Color?> _borderColorAnimation;
  final List<Color> rainbowColors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];

  @override
  void initState() {
    super.initState();
    position = const Duration();
    musicLength = const Duration();

    // Initialize animation controller with faster duration
    _borderAnimationController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    // Create rainbow color animation
    _borderColorAnimation = TweenSequence<Color?>(
      rainbowColors.asMap().entries.map((entry) {
        final nextIndex = (entry.key + 1) % rainbowColors.length;
        return TweenSequenceItem(
          weight: 1.0,
          tween: ColorTween(
            begin: rainbowColors[entry.key],
            end: rainbowColors[nextIndex],
          ),
        );
      }).toList(),
    ).animate(CurvedAnimation(
      parent: _borderAnimationController,
      curve: Curves.linear,
    ));

    _initializePlayer();
  }

  Future<void> _initializePlayer() async {
    try {
      setState(() => _isLoading = true);
      await Player().initPlayer();

      // Set up listeners before loading song
      advancedPlayer.onDurationChanged.listen((Duration? d) {
        if (mounted && d != null && d.inMilliseconds > 0) {
          setState(() => musicLength = d);
        }
      });

      advancedPlayer.onPositionChanged.listen((Duration p) {
        if (mounted) {
          setState(() => position = p);
        }
      });

      // Add player state listener
      advancedPlayer.onPlayerStateChanged.listen((PlayerState state) {
        if (mounted) {
          if (state == PlayerState.playing) {
            _borderAnimationController.repeat();
          } else {
            _borderAnimationController.stop();
            _borderAnimationController.reset();
          }
        }
      });

      final duration = await Player().loadSong(widget.song);
      if (mounted) {
        setState(() {
          if (duration != null && duration.inMilliseconds > 0) {
            musicLength = duration;
          }
          _isLoading = false;
        });
      }
    } catch (e) {
      print('Error initializing player: $e');
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  @override
  void dispose() {
    _borderAnimationController.dispose();
    Player().stopSong();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Don't reset durations here as it might interfere with loading
  }

  String formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String minutes = twoDigits(duration.inMinutes.remainder(60));
    String seconds = twoDigits(duration.inSeconds.remainder(60));
    return "$minutes:$seconds";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Your existing content
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 90),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey.shade800,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove_circle_outline),
                        onPressed: () {
                          setState(() {
                            if (lyricsFontSize > minFontSize) {
                              lyricsFontSize -= fontSizeStep;
                            }
                          });
                        },
                        color: lyricsFontSize > minFontSize ? Colors.white : Colors.grey,
                      ),
                      IconButton(
                        icon: const Icon(Icons.add_circle_outline),
                        onPressed: () {
                          setState(() {
                            if (lyricsFontSize < maxFontSize) {
                              lyricsFontSize += fontSizeStep;
                            }
                          });
                        },
                        color: lyricsFontSize < maxFontSize ? Colors.white : Colors.grey,
                      ),
                      const SizedBox(width: 6),
                      const Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          'قەبارەی نوسین: ',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(width: 20),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                // Pass the font size to songLyrics
                getLyrics(widget.selectedCard),
              ],
            ),
          ),
        ],
      ),

      //test

      //bottom player UI
      bottomNavigationBar: AnimatedBuilder(
        animation: _borderAnimationController,
        builder: (context, child) {
          return BottomAppBar(
            color: Colors.grey[800],
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                border: Border.all(
                  width: 2,
                  color: currentIcon == Icons.pause_circle_filled_outlined ? (_borderColorAnimation.value ?? Colors.grey) : Colors.grey,
                ),
                gradient: currentIcon == Icons.pause_circle_filled_outlined
                    ? LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.grey.shade900,
                          Colors.grey.shade800,
                        ],
                      )
                    : null,
              ),
              height: 80,
              child: _isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    if (currentIcon == Icons.play_circle_fill_rounded) {
                                      Player().playSong(widget.song);
                                    } else if (currentIcon == Icons.pause_circle_filled_outlined) {
                                      Player().pauseSong();
                                    }
                                  });
                                },
                                child: Icon(
                                  currentIcon,
                                  size: 40,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                formatDuration(position),
                                style: const TextStyle(color: Colors.white),
                              ),
                              Expanded(child: slider()),
                              Text(
                                formatDuration(musicLength),
                                style: const TextStyle(color: Colors.white),
                              ),
                            ],
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

Widget slider() {
  return SliderTheme(
    data: SliderThemeData(
      trackHeight: 2.0,
      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6.0),
      overlayShape: const RoundSliderOverlayShape(overlayRadius: 12.0),
      activeTrackColor: Colors.orange,
      inactiveTrackColor: Colors.grey.shade400,
      thumbColor: Colors.orange,
      overlayColor: Colors.orange.withOpacity(0.3),
    ),
    child: Slider(
      value: position.inSeconds.toDouble(),
      max: musicLength.inSeconds.toDouble(),
      min: 0,
      onChanged: (value) {
        seekToSec(value.toInt());
      },
    ),
  );
}

void seekToSec(int sec) {
  Duration newPos = Duration(seconds: sec);
  advancedPlayer.seek(newPos);
}
