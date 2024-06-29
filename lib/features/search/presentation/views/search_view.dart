import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../logic/cubit/search_cubit.dart';
import '../../logic/cubit/search_state.dart';
import '../widgets/custom_search_bar.dart';
import '../widgets/search_bloc_builder.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomSearchBar(),
            SearchBlocBuilder(),
          ],
        ),
      ),
    );
  }
}


