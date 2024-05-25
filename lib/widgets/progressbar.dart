import 'package:flutter/material.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

class AudioPlayerProgressBar extends StatefulWidget {
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
  State<AudioPlayerProgressBar> createState() => _AudioPlayerProgressBarState();
}

class _AudioPlayerProgressBarState extends State<AudioPlayerProgressBar> {
  @override
  Widget build(BuildContext context) {
    return ProgressBar(
      progress: widget.progress,
      buffered: widget.buffered,
      total: widget.total,
      progressBarColor: Colors.red,
      baseBarColor: Colors.white.withOpacity(0.24),
      bufferedBarColor: Colors.black.withOpacity(0.24),
      thumbColor: Colors.black,
      barHeight: 3.0,
      thumbRadius: 5.0,
      timeLabelLocation: TimeLabelLocation.sides,
    );
  }
}
