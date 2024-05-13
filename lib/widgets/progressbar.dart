import 'package:flutter/material.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

class AudioPlayerProgressBar extends StatelessWidget {
  final Duration total;
  final Duration progress;
  final Duration buffered;

  const AudioPlayerProgressBar({
    super.key,
    required this.total,
    required this.progress,
    required this.buffered,
  });

  @override
  Widget build(BuildContext context) {
    return ProgressBar(
      progress: progress,
      buffered: buffered,
      total: total,
      progressBarColor: Colors.red,
      baseBarColor: Colors.white.withOpacity(0.24),
      bufferedBarColor: Colors.white.withOpacity(0.24),
      thumbColor: Colors.white,
      barHeight: 3.0,
      thumbRadius: 5.0,
    );
  }
}
