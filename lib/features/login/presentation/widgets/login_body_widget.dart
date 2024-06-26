import 'package:flutter/material.dart';
import '../../../../core/helper/extensions.dart';
import 'is_has_an_account.dart';
import 'text_form_field_body.dart';

class LonginBodyWidget extends StatelessWidget {
  const LonginBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Column(
        children: [
          const TextFormFieldBody(),
          30.0.getVerticalSpacer(),
          const DontHaveAccountWidget(),
        ],
      ),
    );
  }
}
