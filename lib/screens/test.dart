import 'package:flutter/material.dart';
import 'package:timeit_1/widgets/customtext.dart';
import 'package:timeit_1/widgets/progressbar.dart';
import 'package:timeit_1/widgets/rectangle.dart';

class ProgresBarTest extends StatefulWidget {
  const ProgresBarTest({super.key});

  @override
  State<ProgresBarTest> createState() => _ProgresBarTestState();
}

class _ProgresBarTestState extends State<ProgresBarTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const CustomText(
              label: "label",
              lcolor: Colors.black,
              fontweight: FontWeight.bold),
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
                          icon: const Icon(Icons.play_arrow_rounded),
                          iconSize: 40.0,
                        ),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomText(
                                  label: 'time of recording',
                                  lcolor: Colors.black,
                                  lfontsize: 20.0,
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
          itemCount: 15,
        ));
  }
}
