import 'package:flutter/material.dart';
import 'package:shop_app/core/helper/extensions.dart';
import '../../../../core/router/routes.dart';
import '../widgets/already_have_an_account.dart';
import '../widgets/get_buttons.dart';
import '../widgets/onboard_controller.dart';

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
              90.0.getVerticalSpacer(),
              OnBoardingControllerWidget(
                onPageChanged: (index) {
                  setState(() {});
                  currenIndex = index;
                },
                controller: _controller,
              ),
              20.0.getVerticalSpacer(),
              GetButtons(
                controller: _controller,
                currentIndex: currenIndex,
                onPressed: () {
                  _controller.nextPage(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.bounceIn);

                  context.pushNamed(Routes.signup);
                },
              ),
              30.0.getVerticalSpacer(),
              AlreadyHaveAccountWidget(
                onTap: () {
                  context.pushNamed(Routes.login);
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
