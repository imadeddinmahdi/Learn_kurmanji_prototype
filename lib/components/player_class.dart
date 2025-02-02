import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

AudioPlayer advancedPlayer = AudioPlayer();
AudioCache audioCache = AudioCache();
IconData pauseIcon = Icons.pause_circle_filled_outlined;
IconData playIcon = Icons.play_circle_fill_rounded;
IconData currentIcon = Icons.play_circle_fill_rounded;
Duration position = const Duration();
Duration musicLength = const Duration();

class Player {
  Future<void> initPlayer() async {
    advancedPlayer = AudioPlayer();
    audioCache = AudioCache();
  }

  Future<Duration?> loadSong(String songName) async {
    try {
      // First, stop any currently playing audio
      await advancedPlayer.stop();

      // Load and get the audio file
      final source = AssetSource(songName);
      await advancedPlayer.setSource(source);

      // Get the duration
      final duration = await advancedPlayer.getDuration();
      return duration;
    } catch (e) {
      print('Error loading song: $e');
    }
    return null;
  }

  Future<void> playSong(String songName) async {
    currentIcon = Icons.pause_circle_filled_outlined;
    final source = AssetSource(songName);
    await advancedPlayer.play(source);
  }

  Future<void> stopSong() async {
    currentIcon = Icons.play_circle_fill_rounded;
    await advancedPlayer.stop();
  }

  Future<void> pauseSong() async {
    currentIcon = Icons.play_circle_fill_rounded;
    await advancedPlayer.pause();
  }

  Future<void> resetSong() async {
    await advancedPlayer.resume();
    await stopSong();
  }
}
