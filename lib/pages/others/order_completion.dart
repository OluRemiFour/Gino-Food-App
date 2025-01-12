import 'package:flutter/material.dart';
import 'package:ginofood/pages/others/failed_order.dart';
import 'package:ginofood/utils/button.dart';
import 'package:ginofood/pages/tabs/home.dart';

class OrderCompletion extends StatelessWidget {
  const OrderCompletion({super.key});

  static String id = 'order_completion';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/check_circle_outline.png'),
            const Center(
              heightFactor: 5.0,
              child: Column(
                children: [
                  Text(
                    'Thank you for your order!',
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
                    'You can track your order by using the \n button below',
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
              texts: 'View order details',
              callback: () {
                Navigator.pushNamed(context, FailedOrder.id);
              },
            ),
            const SizedBox(
              height: 15.0,
            ),
            Button(
              bgColor: Colors.white,
              borderColor: const Color(0xff43C114),
              textColor: const Color(0xff43C114),
              texts: 'Continue shopping',
              callback: () {
                Navigator.pushNamed(context, HomeScreen.id);
              },
            )
          ],
        ),
      ),
    );
  }
}
