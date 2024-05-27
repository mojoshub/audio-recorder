import 'dart:async';

import 'package:flutter/material.dart';

class TimerPage extends StatefulWidget {
  const TimerPage({super.key});

  @override
  _TimerPageState createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  int _elapsedTimeInSeconds = 0;
  bool _isRunning = false;

  void _startTimer() {
    setState(() {
      _isRunning = true;
    });
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_isRunning) {
        setState(() {
          _elapsedTimeInSeconds++;
        });
      } else {
        timer.cancel();
      }
    });
  }

  void _stopTimer() {
    setState(() {
      _isRunning = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Timer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Elapsed Time:',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              '$_elapsedTimeInSeconds seconds',
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _isRunning ? _stopTimer : _startTimer,
        tooltip: 'Start/Pause',
        child: Icon(_isRunning ? Icons.pause : Icons.play_arrow),
      ),
    );
  }
}
