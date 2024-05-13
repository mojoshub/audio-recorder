import 'package:flutter/material.dart';
import 'package:timeit_1/widgets/customtext.dart';
import 'package:timeit_1/widgets/progressbar.dart';
import 'package:timeit_1/widgets/rect.dart';

class AudioLIst extends StatefulWidget {
  const AudioLIst({super.key});

  @override
  State<AudioLIst> createState() => _AudioLIstState();
}

class _AudioLIstState extends State<AudioLIst> {
  final Duration total = const Duration(seconds: 10);
  final Duration progress = const Duration(seconds: 5);
  final Duration buffered = const Duration(seconds: 7);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
            label: 'Audio List',
            lcolor: Colors.black,
            fontweight: FontWeight.w700,
            lfontsize: 35.0),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.all(15.0),
          child: Square(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.play_arrow_rounded),
                  color: Colors.black,
                  iconSize: 40.0,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(8.0, 20.0, 0.0, 20.0),
                  child: Column(
                    children: [
                      CustomText(
                          label: 'time of recording',
                          lcolor: Colors.black,
                          fontweight: FontWeight.normal),
                      AudioPlayerProgressBar(
                          total: Duration(seconds: 60),
                          progress: Duration(seconds: 44),
                          buffered: Duration(seconds: 45))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        itemCount: 10,
      ),
    );
  }
}
