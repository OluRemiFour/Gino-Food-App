import 'package:flutter/material.dart';
import 'package:ginofood/screens/create_account.dart';
import 'package:ginofood/screens/signin_account.dart';

class GinoThird extends StatelessWidget {
  static String id = 'third_screen';

  const GinoThird({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/woman.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          color: Colors.black.withOpacity(0.7),
        ),
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Flexible(
                child: Hero(
                  tag: 'logo',
                  child: SizedBox(
                    height: 150.0,
                    child: Image.asset(
                      'images/logo.png',
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 120.0),
                    child: Text(
                      'Join Now',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 80.0),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                              bottom: 35.0, left: 30.0, right: 30.0, top: 10.0),
                          child: Text(
                            'Farewell to market hassles, embrace a simpler, healthier life.',
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              height: 10.0,
                              width: 10.0,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff43c114),
                              ),
                            ),
                            Container(
                              height: 10.0,
                              width: 10.0,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 10.0),
                        child: Material(
                          color: const Color(0xff43c114),
                          borderRadius: BorderRadius.circular(10.0),
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.pushNamed(context, CreateAccount.id);
                            },
                            minWidth: 170.0,
                            height: 51.0,
                            child: const Text(
                              'Join',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 10.0),
                        child: Material(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10.0),
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.pushNamed(context, SigninAccount.id);
                            },
                            minWidth: 170.0,
                            height: 51.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: const BorderSide(
                                color: Color(0xff43C114),
                                width: 2.0,
                              ),
                            ),
                            child: const Text(
                              'Sign in',
                              style: TextStyle(
                                color: Color(0xff43C114),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}
