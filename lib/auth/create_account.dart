import 'package:flutter/material.dart';
import 'package:ginofood/components/constant.dart';
import 'package:ginofood/utils/c_t_a_buttom_text.dart';
import 'package:ginofood/utils/c_t_a_button.dart';
import 'package:ginofood/utils/dyn_input_decoration.dart';
import 'package:ginofood/pages/tabs/home.dart';
import 'package:ginofood/auth/signin_account.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  static String id = 'create_account';

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Logo Image
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Image.asset(
                'images/logo.png',
                width: 100,
                height: 100,
              ),
            ),

            // Create Account Text
            const SizedBox(height: 5),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),
            DynInputDecoration(
              labelHintContext: 'Username',
              inputIcon: const Icon(Icons.person),
            ),
            const SizedBox(height: 15),
            DynInputDecoration(
              labelHintContext: 'Full Name',
              inputIcon: const Icon(Icons.contacts),
            ),
            const SizedBox(height: 15),
            DynInputDecoration(
              labelHintContext: 'Email Address',
              inputIcon: const Icon(Icons.email),
            ),
            const SizedBox(height: 15),
            DynInputDecoration(
              labelHintContext: 'Phone Number',
              inputIcon: const Icon(Icons.phone),
            ),
            const SizedBox(height: 15),
            // DynInputDecoration(
            //   labelHintContext: 'Password',
            //   inputIcon: const Icon(Icons.lock),
            // ),
            TextField(
              obscureText: true,
              decoration: kTextFileInputDecoration.copyWith(
                hintText: 'Password',
                prefixIcon: const Icon(Icons.lock),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Your password must contain at least 8 characters',
            ),
            const SizedBox(height: 5),
            TextField(
              decoration: kTextFileInputDecoration.copyWith(
                hintText: 'Confirm Password',
                prefixIcon: const Icon(Icons.lock),
              ),
            ),
            CTAButton(
              inputText: 'Create Account',
              onPressedCallback: () {
                Navigator.pushNamed(context, HomeScreen.id);
              },
            ),
            CTAButtomText(
              firstText: 'Already have an account?',
              secondText: 'Sign in',
              redirectTo: () {
                Navigator.pushNamed(context, SigninAccount.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
