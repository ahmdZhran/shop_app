
import 'package:flutter/material.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _controller = PageController(initialPage: 0);
  int currenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 90,
              ),
              OnBoardingControllerWidget(
                onPageChanged: (index) {
                  setState(() {});
                  currenIndex = index;
                },
                controller: _controller,
              ),
              const SizedBox(
                height: 20,
              ),
              GetButtons(
                controller: _controller,
                currentIndex: currenIndex,
                onPressed: () {
                  _controller.nextPage(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.bounceIn);
                  onBoardingVisited();
                  customNavigation(context, '/SignUp');
                },
              ),
              const SizedBox(height: 30),
              AlreadyHaveAccountWidget(
                onTap: () {
                  onBoardingVisited();
                  customNavigation(context, '/SignIn');
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}