// ignore_for_file: prefer_const_constructors

import 'package:flowers/components/button.dart';
import 'package:flowers/components/text_field.dart';
import 'package:flowers/constants/colors_sizedbox.dart';
import 'package:flowers/screens/signin.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset("assets/images/bottom.png"),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset("assets/images/main_top.png"),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "ZAHRA",
                      style: TextStyle(
                        color: mainColor900,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "SD",
                      style: TextStyle(
                        color: mainGrey,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                sizeBetweenH18,
                Text(
                  "Let's create your account",
                  style: TextStyle(
                    color: mainGrey.withOpacity(0.4),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                sizeBetweenH18,
                SingleChildScrollView(
                  child: Form(
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomTextField(
                            lable: "Email",
                            prefixIcon: Icon(Icons.email_outlined),
                            keybordType: TextInputType.emailAddress,
                            isPassword: false,
                            controller: null,
                          ),
                          CustomTextField(
                            lable: "Password",
                            prefixIcon: Icon(Icons.lock_outline),
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.visibility_outlined),
                            ),
                            keybordType: TextInputType.emailAddress,
                            isPassword: false,
                            controller: null,
                          ),
                          Submit(
                            text: "Signup",
                            isLoading: false,
                            onPressed: () {},
                          ),
                          sizeBetweenH18,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Have an account ?",
                                style: TextStyle(
                                  color: mainColor900,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SigninScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Signin here",
                                  style: TextStyle(
                                    color: mainColor900,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
