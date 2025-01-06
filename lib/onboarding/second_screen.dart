import 'package:flutter/material.dart';
import 'package:ginofood/onboarding/third_screen.dart';

class GinoSecond extends StatelessWidget {
  const GinoSecond({super.key});

  static String id = 'second_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/secondBack.jpeg'),
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
                      padding: EdgeInsets.only(top: 100.0),
                      child: Text(
                        'Get To Know',
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
                                bottom: 35.0,
                                left: 30.0,
                                right: 30.0,
                                top: 10.0),
                            child: Text(
                              'Farm-fresh affordability at your fingertips. Our app delivers produce and foods to you, market-free.',
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                height: 10.0,
                                width: 10.0,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff43C114),
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
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Material(
                        color: const Color(0xff43C114),
                        borderRadius: BorderRadius.circular(10.0),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.pushNamed(context, GinoThird.id);
                          },
                          minWidth: 350.0,
                          height: 55.0,
                          child: const Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
