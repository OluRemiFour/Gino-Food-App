import 'package:flutter/material.dart';

class CTAButton extends StatelessWidget {
  CTAButton(
      {super.key, required this.inputText, required this.onPressedCallback});

  final String inputText;
  final VoidCallback onPressedCallback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, bottom: 5),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF43C114),
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          onPressed: onPressedCallback,
          child: Text(
            inputText,
            style: const TextStyle(
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
