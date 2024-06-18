import 'package:flutter/material.dart';
import '../utils/color_manager.dart';
import '../utils/text_styles.dart';

class CustomTextFomField extends StatelessWidget {
  const CustomTextFomField({
    super.key,
    required this.lableText,
    this.onChanged,
    this.keyboardType,
    this.suffix,
    this.obscureText = false,
  });

  final String lableText;
  final void Function(String)? onChanged;
  final TextInputType? keyboardType;
  final Widget? suffix;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        obscureText: obscureText,
        keyboardType: keyboardType,
        validator: (value) {
          if (value!.isEmpty) {
            return 'this field is required';
          } else {
            return null;
          }
        },
        onChanged: onChanged,
        style: TextStyle(color: ColorManager.kWhiteColor),
        decoration: InputDecoration(
          suffixIcon: suffix != null
              ? SizedBox(
                  height: 48, // Set a fixed height for the suffix widget
                  width: 48, // Set a fixed width for the suffix widget
                  child: suffix,
                )
              : null,
          filled: true,
          fillColor: const Color(0xff101215),
          enabledBorder: outlineInputBorder(),
          focusedBorder: outlineInputBorder(),
          labelText: lableText,
          labelStyle: CustomTextStyle.regular14,
        ),
      ),
    );
  }
}

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(25),
    borderSide: BorderSide(
      color: ColorManager.kDarkGreyColor,
    ),
  );
}
