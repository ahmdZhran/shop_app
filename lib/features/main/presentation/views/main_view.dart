import 'package:flutter/material.dart';
import 'package:shop_app/features/main/widgets/bottom_nav_bar/main_nav_bar.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      constraints: const BoxConstraints.expand(),
      child: const Column(
        children: [
          Expanded(child: Text('Our Screens')),
          MainBottonNavBar(),
        ],
      ),
    ));
  }
}
