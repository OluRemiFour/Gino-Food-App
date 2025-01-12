import 'package:flutter/material.dart';
import 'package:ginofood/pages/others/failed_order.dart';
import 'package:ginofood/pages/others/first_screen.dart';
import 'package:ginofood/pages/others/second_screen.dart';
import 'package:ginofood/pages/others/third_screen.dart';
import 'package:ginofood/auth/create_account.dart';
import 'package:ginofood/pages/tabs/home.dart';
import 'package:ginofood/pages/others/order_completion.dart';
import 'package:ginofood/auth/signin_account.dart';

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
        OrderCompletion.id: (context) => const OrderCompletion(),
        FailedOrder.id: (context) => const FailedOrder()
      },
    );
  }
}
