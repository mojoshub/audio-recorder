import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String label;
  final Color lcolor;
  final double? lfontsize;
  final FontWeight fontweight;
  const CustomText({
    super.key,
    required this.label,
    required this.lcolor,
    required this.fontweight,
    this.lfontsize,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
          color: lcolor,
          fontSize: lfontsize,
          fontWeight: fontweight,
          fontFamily: 'Light Stories'),
    );
  }
}
