import 'package:flutter/material.dart';
import '../../../core/widgets/back_arrow_button.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
          centerTitle: true,
          leading: const BackArrowButton(),
          elevation: 0,
          
        ),
        body: const Column(
          children: [],
        ));
  }
}
