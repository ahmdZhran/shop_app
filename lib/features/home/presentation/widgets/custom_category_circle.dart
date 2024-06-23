import 'package:flutter/material.dart';

class CustomCategoryCircle extends StatelessWidget {
  const CustomCategoryCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: CircleAvatar(
        backgroundColor: Colors.purple,
        radius: 30,
        backgroundImage: AssetImage(
          'assets/images/Laptop.png',
        ),
      ),
    );
  }
}
