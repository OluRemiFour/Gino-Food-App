import 'package:flutter/material.dart';
import 'package:ginofood/pages/others/second_screen.dart';

class GinoFood extends StatefulWidget {
  const GinoFood({super.key});

  static String id = 'first_scrreen';

  @override
  State<GinoFood> createState() => _GinoFoodState();
}

class _GinoFoodState extends State<GinoFood> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, GinoSecond.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff012C15),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'logo',
              child: SizedBox(
                height: 120.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
