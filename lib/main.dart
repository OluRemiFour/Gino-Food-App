import 'package:flutter/material.dart';
import 'package:ginofood/onboarding/first_screen.dart';
import 'package:ginofood/onboarding/second_screen.dart';
import 'package:ginofood/onboarding/third_screen.dart';
import 'package:ginofood/screens/create_account.dart';
import 'package:ginofood/screens/home.dart';
import 'package:ginofood/screens/signin_account.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: GinoFood.id,
      routes: {
        GinoFood.id: (context) => const GinoFood(),
        GinoSecond.id: (context) => const GinoSecond(),
        GinoThird.id: (context) => const GinoThird(),
        CreateAccount.id: (context) => const CreateAccount(),
        SigninAccount.id: (context) => const SigninAccount(),
        HomeScreen.id: (context) => const HomeScreen(),
      },
    );
  }
}
