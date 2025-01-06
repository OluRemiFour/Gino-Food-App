import 'package:flutter/material.dart';
import 'package:ginofood/constant.dart';
import 'package:ginofood/screens/c_t_a_buttom_text.dart';
import 'package:ginofood/screens/c_t_a_button.dart';
import 'package:ginofood/screens/create_account.dart';
import 'package:ginofood/screens/home.dart';

class SigninAccount extends StatefulWidget {
  const SigninAccount({super.key});

  static String id = 'signin_account';

  @override
  State<SigninAccount> createState() => _SigninAccountState();
}

class _SigninAccountState extends State<SigninAccount> {
  bool _obscureText = true;
  bool _toggleCheckBox = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Image.asset(
                'images/logo.png',
                width: 100,
                height: 100,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    TextField(
                      decoration: kTextFileInputDecoration.copyWith(
                        hintText: 'Username',
                        prefixIcon: const Icon(Icons.person),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextField(
                      obscureText: _obscureText,
                      decoration: kTextFileInputDecoration.copyWith(
                        hintText: 'Password',
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.remove_red_eye
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  _toggleCheckBox = !_toggleCheckBox;
                                });
                              },
                              icon: Icon(_toggleCheckBox
                                  ? Icons.check_box
                                  : Icons.check_box_outline_blank),
                            ),
                            const Text('Remember me'),
                          ],
                        ),
                        const Text(
                          'Forgot Password?',
                          style: TextStyle(color: Color(0xFF32910F)),
                          // onTap: () {},
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 270.0,
                ),
                Column(
                  children: [
                    CTAButton(
                      inputText: 'Sign In',
                      onPressedCallback: () {
                        Navigator.pushNamed(context, HomeScreen.id);
                      },
                    ),
                    CTAButtomText(
                      firstText: 'Don’t have an account?',
                      secondText: 'Signup',
                      redirectTo: () {
                        Navigator.pushNamed(context, CreateAccount.id);
                      },
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
