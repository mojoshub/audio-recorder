import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color buttoncolor;
  final String? buttonlabel;
  final Icon icon;
  final Color iconcolor;
  const CustomButton(
      {super.key,
      required this.buttoncolor,
      this.buttonlabel,
      required this.icon,
      required this.iconcolor});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
            backgroundColor: buttoncolor,
            padding: const EdgeInsets.fromLTRB(90, 40, 90, 40)),
        child: Icon(
          icon.icon,
          color: iconcolor,
          size: 50.0,
        ));
  }
}
