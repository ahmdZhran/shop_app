import 'package:flutter/material.dart';
import '../../../../core/utils/color_manager.dart';

class DetailsOfAmount extends StatelessWidget {
  const DetailsOfAmount({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 20),
        ),
        Text(
          value,
          style: TextStyle(
              fontSize: 20,
              color: ColorManager.kPrimaryColor,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
