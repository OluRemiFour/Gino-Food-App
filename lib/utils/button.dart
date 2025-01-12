import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button(
      {super.key,
      required this.bgColor,
      required this.textColor,
      required this.borderColor,
      required this.texts,
      required this.callback});

  final bgColor;
  final borderColor;
  final textColor;
  String texts;
  VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GestureDetector(
        onTap: callback,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(
              color: borderColor,
              width: 1.0,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 80,
            ),
            child: Text(
              texts,
              style: TextStyle(
                color: textColor,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
