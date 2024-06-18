import 'package:flutter/material.dart';
import 'package:shop_app/features/auth/presentation/widgets/is_has_an_account.dart';


class LoginBodyWidget extends StatelessWidget {
  const LoginBodyWidget({super.key});

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
      child: const Column(
        children: [
          TextFormFieldBody(),
          SizedBox(height: 30),
          IsHasAnAccount(),
        ],
      ),
    );
  }
}