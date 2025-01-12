import 'package:flutter/material.dart';
import 'package:ginofood/auth/create_account.dart';
import 'package:ginofood/auth/signin_account.dart';

class CTAButtomText extends StatelessWidget {
  CTAButtomText(
      {super.key,
      required this.firstText,
      required this.secondText,
      this.redirectTo});

  String firstText;
  String secondText;

  final VoidCallback? redirectTo;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          firstText,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, SigninAccount.id);
            },
            child: TextButton(
              onPressed: redirectTo,
              child: Text(
                secondText,
                style: const TextStyle(
                  color: Color(0xFF43C114),
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
