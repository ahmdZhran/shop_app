import 'package:flutter/material.dart';
import '../utils/color_manager.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.color,
      required this.onPressed,
      required this.text,
      this.onTap});
  final Color? color;
  final VoidCallback onPressed;
  final Text text;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 350,
        height: 56,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color ?? ColorManager.kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          onPressed: onPressed,
          child: text,
        ),
      ),
    );
  }
}