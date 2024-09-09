import 'package:flutter/material.dart';
import '../../../../core/helper/extensions.dart';
import '../../../../core/router/routes.dart';
import '../../../../core/widgets/already_have_an_account.dart';
import '../widgets/get_buttons.dart';
import '../widgets/onboard_controller.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              70.0.getVerticalSpacer(),
              OnBoardingControllerWidget(
                onPageChanged: (index) {
                  setState(() {});
                  currentIndex = index;
                },
                controller: _controller,
              ),
              20.0.getVerticalSpacer(),
              GetButtons(
                controller: _controller,
                currentIndex: currentIndex,
                onPressed: () {
                  _controller.nextPage(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.bounceIn);

                  context.pushNamed(Routes.signup);
                },
              ),
              16.0.getVerticalSpacer(),
              const AlreadyHaveAccountWidget()
            ],
          ),
        ],
      ),
    );
  }
}
