// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flowers/components/button.dart';
import 'package:flowers/constants/colors_sizedbox.dart';
import 'package:flowers/screens/signin.dart';
import 'package:flowers/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomPage extends StatelessWidget {
  const WelcomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
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
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(
                        color: mainColor900,
                        fontSize: 30,
                      ),
                    ),
                    sizeBetweenH26,
                    sizeBetweenH26,
                    SvgPicture.asset(
                      "assets/icons/chat.svg",
                      height: 333,
                      width: 333,
                    ),
                    sizeBetweenH26,
                    sizeBetweenH26,
                    Padding(
                      padding: EdgeInsets.all(28.0),
                      child: Column(
                        children: [
                          Submit(
                            text: "Signup",
                            isLoading: false,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignupScreen(),
                                ),
                              );
                            },
                          ),
                          sizeBetweenH10,
                          Submit(
                            text: "Signin",
                            isLoading: false,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SigninScreen(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
