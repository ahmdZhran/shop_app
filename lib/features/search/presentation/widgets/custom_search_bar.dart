import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/utils/app_strings.dart';
import 'package:shop_app/core/utils/color_manager.dart';
import 'package:shop_app/features/search/logic/cubit/search_cubit.dart';
import 'package:shop_app/features/search/logic/cubit/search_state.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: ColorManager.kDarkGreyColor,
        ),
        child: TextField(
          onSubmitted: (query) {
            context.read<SearchCubit>().searchOnProducts(query);
          },
          controller: _searchController,
          decoration: const InputDecoration(
            hintText: AppStrings.searchProduct,
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search, color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
