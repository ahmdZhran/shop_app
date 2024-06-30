import 'package:flutter/material.dart';

import '../category/category_text.dart';
import '../see_all_text.dart';

class TitleOfSections extends StatelessWidget {
  const TitleOfSections({
    super.key,
    required this.titleOfSection,
  });
  final String titleOfSection;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CategoryTextWidget(titleTextWidget: titleOfSection),
        const Spacer(),
        SeeAllTextWidget(
          onPressed: () {},
        ),
      ],
    );
  }
}
