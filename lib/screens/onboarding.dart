// ignore_for_file: prefer_const_constructors

import 'package:flowers/components/button.dart';
import 'package:flowers/constants/colors_sizedbox.dart';
import 'package:flowers/models/onboarding_items.dart';
import 'package:flowers/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = OnboardingItems();
  final pageController = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: isLastPage
              ? Submit(
                  text: "Get Started",
                  isLoading: false,
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  })
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //! Skip button
                    TextButton(
                      onPressed: () => pageController
                          .jumpToPage(controller.onBoardingItems.length - 1),
                      child: Text("Skip"),
                    ),
                    //! Indicator
                    SmoothPageIndicator(
                      onDotClicked: (index) => pageController.animateToPage(
                        index,
                        duration: Duration(milliseconds: 400),
                        curve: Curves.easeIn,
                      ),
                      controller: pageController,
                      count: controller.onBoardingItems.length,
                      effect: ExpandingDotsEffect(
                        dotHeight: 10,
                        dotWidth: 10,
                      ),
                    ),
                    //! Next button
                    TextButton(
                      onPressed: () => pageController.nextPage(
                        duration: Duration(milliseconds: 400),
                        curve: Curves.easeIn,
                      ),
                      child: Text("Next"),
                    ),
                  ],
                ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: PageView.builder(
            onPageChanged: (index) => setState(
              () => isLastPage = controller.onBoardingItems.length - 1 == index,
            ),
            itemCount: controller.onBoardingItems.length,
            controller: pageController,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(controller.onBoardingItems[index].image),
                    sizeBetweenH26,
                    Text(
                      controller.onBoardingItems[index].title,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    sizeBetweenH14,
                    Text(
                      controller.onBoardingItems[index].description,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: mainGrey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
