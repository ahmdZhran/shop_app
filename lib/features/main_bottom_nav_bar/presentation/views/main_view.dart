import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/di/dependency_injection.dart';
import 'package:shop_app/features/favorites/cubit/favorit_cubit.dart';
import 'package:shop_app/features/search/logic/cubit/search_cubit.dart';
import '../../../favorites/presentations/views/favorites_view.dart';
import '../../../home/presentation/views/home_view.dart';
import '../../../profile/views/profile_view.dart';
import '../../../search/presentation/views/search_view.dart';
import '../../widgets/bottom_nav_bar/main_nav_bar.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  MainViewState createState() => MainViewState();
}

class MainViewState extends State<MainView> {
  int _selectedIndex = 0;

  final List<Widget> _views = [
    const HomeView(),
    BlocProvider(
      create: (context) => SearchCubit(getIt()),
      child: const SearchView(),
    ),
    BlocProvider(
      create: (context) => FavoriteCubit(getIt()),
      child: const FavoritesView(),
    ),
    const ProfileView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            child: _views[_selectedIndex],
          ),
          MainBottomNavBar(
            selectedIndex: _selectedIndex,
            onItemTapped: _onItemTapped,
          ),
        ],
      ),
    );
  }
}
