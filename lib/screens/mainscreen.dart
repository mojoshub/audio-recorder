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
  bool isrunning = false;

  void startT
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60.0),
            child: AppBar(
              backgroundColor: Colors.black,
              title: const CustomText(
                label: 'RECORD AUDIO',
                lcolor: Colors.white,
                fontweight: FontWeight.bold,
                lfontsize: 30.0,
              ),
              centerTitle: true,
            )),
        body:  Center(
          child: Column(
            children: [
              CustomText(
                label: '${clock} seconds', 
                lcolor: Colors.black, 
                fontweight: FontWeight.w600),
              CustomButton(
                action: isrunning?startre,
                buttoncolor: Colors.black,
                icon: Icon(Icons.mic),
                iconcolor: Colors.white,
              ),
            ],
          ),
        ));
  }

  Future<void> startRecording() async {}

  Future<void> stopRecording() async {}

  Future<void> requestPermission() async {
    var status = await Permission.microphone.request();
    if (status.isGranted) {}
  }

  Future<String> saveAudioFile() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String filePath = '${appDocDir.path}/recording.acc';
    return filePath;
  }
}
