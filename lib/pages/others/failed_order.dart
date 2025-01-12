import 'package:flutter/material.dart';
import 'package:ginofood/utils/button.dart';
import 'package:ginofood/pages/tabs/home.dart';

class FailedOrder extends StatelessWidget {
  const FailedOrder({super.key});

  static String id = 'failed_order';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/cancle.png'),
            const Center(
              heightFactor: 5.0,
              child: Column(
                children: [
                  Text(
                    'Sorry ! Your Order Has Failed!',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Something went wrong. Please try again to \n continue your order',
                    style: TextStyle(
                      color: Color(0xffE7AC07),
                      fontSize: 16,
                    ),
                    softWrap: true,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Button(
              bgColor: const Color(0xff43C114),
              borderColor: const Color(0xff43C114),
              textColor: Colors.white,
              texts: 'Try again',
              callback: () {
                // Navigator.pop(context);
                Navigator.pushNamed(context, HomeScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
