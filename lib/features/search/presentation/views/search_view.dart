import 'package:flutter/material.dart';
import '../widgets/custom_search_bar.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomSearchBar(),
          ],
        ),
      ),
    );
  }
}
