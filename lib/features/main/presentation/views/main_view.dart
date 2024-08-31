import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../favorites/cubit/favorit_cubit.dart';
import '../../../home/cubits/categories/categories_cubit.dart';
import '../../../home/cubits/products/products_cubit.dart';
import '../../../favorites/presentations/views/favorites_view.dart';
import '../../../home/cubits/banner/banner_cubit.dart';
import '../../../home/presentation/views/home_view.dart';
import '../../../profile/views/profile_view.dart';
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
          create: (_) => BannerCubit(getIt()),
        ),
        BlocProvider(
          create: (_) => CategoriesCubit(getIt()),
        ),
        BlocProvider(
          create: (_) => ProductsCubit(getIt()),
        ),
        BlocProvider(
          create: (_) => FavoriteCubit(getIt())..fetchFavoriteItems(),
        ),
      ],
      child: Column(
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
      ),
    ));
  }
}
