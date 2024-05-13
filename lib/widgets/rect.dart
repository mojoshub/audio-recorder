import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final child;
  const Square({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(9.0),
        child: Container(
          height: 90.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(
                color: Colors.black,
              )),
          child: child,
        ));
  }
}
