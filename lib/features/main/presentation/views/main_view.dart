import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/features/main/logic/cubit/nav_bar_cubit.dart';
import 'package:shop_app/features/main/widgets/bottom_nav_bar/main_nav_bar.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBarCubit(),
      child: Scaffold(
          body: Container(
        constraints: const BoxConstraints.expand(),
        child: const Column(
          children: [
            Expanded(child: Text('Our Screens')),
            MainBottonNavBar(),
          ],
        ),
      )),
    );
  }
}
