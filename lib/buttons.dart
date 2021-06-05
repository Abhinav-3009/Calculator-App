import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final color;
  final textColor;
  final String buttonText;

  MyButtons({this.color, this.textColor, this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(color: textColor),
            ),
          ),
        ),
      ),
    );
  }
}
