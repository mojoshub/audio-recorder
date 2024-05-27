import 'package:flutter/material.dart';
import 'package:timeit_1/widgets/customtext.dart';
import 'package:timeit_1/widgets/progressbar.dart';
import 'package:timeit_1/widgets/rectangle.dart';

class AudioLIst extends StatefulWidget {
  const AudioLIst({super.key});

  @override
  State<AudioLIst> createState() => _AudioLIstState();
}

class _AudioLIstState extends State<AudioLIst> {
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
          itemBuilder: (BuildContext context, int index) {
            return Square(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () {},
                            iconSize: 40,
                            icon: const Icon(Icons.play_arrow_rounded)),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomText(
                                  label: 'time of recording',
                                  lfontsize: 20.0,
                                  lcolor: Colors.black,
                                  fontweight: FontWeight.bold),
                              AudioPlayerProgressBar(
                                  total: Duration(minutes: 2),
                                  progress: Duration(minutes: 1),
                                  buffered: Duration(seconds: 90))
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
          itemCount: 3,
        ));
  }
}
