import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../favorits/favorits_view.dart';
import '../../../home/presentation/views/home_view.dart';
import '../../../porfile/views/profile_view.dart';
import '../../../search/presentation/views/search_view.dart';
import '../../logic/cubit/nav_bar_cubit.dart';
import '../../logic/cubit/nav_bar_state.dart';
import '../../logic/enums/nav_bar_enum.dart';
import '../../widgets/bottom_nav_bar/main_nav_bar.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(child:
            BlocBuilder<NavBarCubit, NavBarState>(builder: (context, state) {
          final cubit = context.read<NavBarCubit>();
          if (cubit.navBarEnum == NavBarEnum.search) {
            return const SearchView();
          } else if (cubit.navBarEnum == NavBarEnum.favorites) {
            return const FavoritesView();
          } else if (cubit.navBarEnum == NavBarEnum.profile) {
            return const ProfileView();
          } else {
            return const HomeView();
          }
        })),
        const MainBottonNavBar(),
      ],
    ));
  }
}
