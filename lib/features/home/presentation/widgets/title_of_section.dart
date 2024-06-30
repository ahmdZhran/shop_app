import 'package:flutter/material.dart';

import 'category/category_text.dart';
import 'see_all_text.dart';

class TitleOfSections extends StatelessWidget {
  const TitleOfSections({
    super.key,
    required this.titleOfSection, required this.onPressed,
  });
  final String titleOfSection;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CategoryTextWidget(titleTextWidget: titleOfSection),
        const Spacer(),
         SeeAllTextWidget(
          onPressed: onPressed,
        ),
      ],
    );
  }
}
