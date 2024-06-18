import 'package:flutter/material.dart';
import 'package:shop_app/core/utils/app_strings.dart';
import 'package:shop_app/core/utils/text_styles.dart';

import 'custom_form_login.dart';

class TextFormFieldBody extends StatelessWidget {
  const TextFormFieldBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            AppStrigns.wecomeBack,
            style: CustomTextStyle.soraBoldstyleBold.copyWith(fontSize: 30),
          ),
          const SizedBox(height: 10),
          Text(
            AppStrigns.enterYourDetailsBelow,
            style: CustomTextStyle.regular14
                .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const EmailAndPasswordFeilds()
        ],
      ),
    );
  }
}
