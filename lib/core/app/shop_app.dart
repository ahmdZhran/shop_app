import 'package:flutter/material.dart';

import '../../features/onboarding/presentation/views/onboarding_view.dart';

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop app',
      home: OnboardingView(),
    );
  }
}
