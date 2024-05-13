import 'package:flutter/material.dart';
import 'package:timeit_1/widgets/custombutton.dart';
import 'package:timeit_1/widgets/customtext.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
        body: const Center(
          child: CustomButton(
            buttoncolor: Colors.black,
            icon: Icon(Icons.mic),
            iconcolor: Colors.white,
          ),
        ));
  }
}
