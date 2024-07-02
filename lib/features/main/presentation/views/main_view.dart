import 'package:flutter/material.dart';

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
        ],
      ),
    ));
  }
}
