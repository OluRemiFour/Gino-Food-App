import 'package:flutter/material.dart';

class DynInputDecoration extends StatelessWidget {
  DynInputDecoration(
      {super.key,
      required this.labelHintContext,
      // required this.labelTextContext,
      required this.inputIcon});

  // String? labelTextContext;
  String? labelHintContext;
  final Icon inputIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: inputIcon,
        prefixIconColor: const Color(0xFF32910F),
        // labelText: labelTextContext,
        hintText: labelHintContext,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF32910F)),
        ),
      ),
    );
  }
}
