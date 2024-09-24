import 'dart:async';
import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:timeit_1/widgets/custombutton.dart';
import 'package:timeit_1/widgets/customtext.dart';

AudioPlayer audioPlayer = AudioPlayer();

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int clock = 0;
  bool isRunning = false;

  void startTimer() {
    setState(() {
      isRunning = true;
    });
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (isRunning) {
        setState(() {
          clock++;
        });
      } else {
        timer.cancel();
      }
    });
  }

  void stopTimer() {
    setState(() {
      isRunning = false;
      int clock = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60.0),
            child: AppBar(
              backgroundColor: const Color.fromARGB(255, 217, 174, 174),
              title: const CustomText(
                label: 'RECORD AUDIO',
                lcolor: Colors.white,
                fontweight: FontWeight.bold,
                lfontsize: 30.0,
              ),
              centerTitle: true,
            )),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CustomText(
                  label: '$clock seconds',
                  lcolor: Colors.black,
                  lfontsize: 80.0,
                  fontweight: FontWeight.w600),
              CustomButton(
                action: () {
                  setState(() {
                    isRunning = !isRunning;
                  });
                  if (isRunning) {
                    requestPermission();
                  } else {
                    stopRecording();
                  }
                },
                buttoncolor: Colors.black,
                icon: Icon(isRunning ? Icons.pause : Icons.mic),
                iconcolor: Colors.white,
              ),
            ],
          ),
        ));
  }

  Future<void> startRecording() async {
    startTimer();
  }

  Future<void> stopRecording() async {
    stopTimer();
  }

  Future<void> requestPermission() async {
    var status = await Permission.microphone.request();
    if (status.isGranted) {
      startRecording();
    } else {
      print('enable permission.');
    }
  }

  Future<String> saveAudioFile() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String filePath = '${appDocDir.path}/recording.acc';
    return filePath;
  }
}
