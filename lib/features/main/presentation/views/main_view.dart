import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../favorits/cubit/favorit_cubit.dart';
import '../../../favorits/presentations/views/favorits_view.dart';
import '../../../home/cubits/home_cubit/home_cubit.dart';
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
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => HomeCubit(getIt()), // Use HomeCubit and fetch all data
          ),
          BlocProvider(
            create: (_) => FavoriteCubit(getIt())..fetchFavoriteItems(),
          ),
        ],
        child: Column(
          children: [
            Expanded(
              child: BlocBuilder<NavBarCubit, NavBarState>(
                builder: (context, state) {
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
                },
              ),
            ),
            const MainBottomNavBar(),
          ],
        ),
      ),
    );
  }
}
