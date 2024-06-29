import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../logic/cubit/search_cubit.dart';
import '../../logic/cubit/search_state.dart';
import '../widgets/custom_search_bar.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CustomSearchBar(),
            SizedBox(
              height: 400,
              child: BlocBuilder<SearchCubit, SearchState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    searchLoading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    searchSuccess: (products) => ListView.builder(
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        final product = products[index];
                        return ListTile(
                          leading: Container(
                              height: 100,
                              width: 75.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Image.network(
                                product.image ?? '',
                              )),
                          title: Text(
                            product.name ?? '',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        );
                      },
                    ),
                    searchError: (error) => Center(
                      child: Text(error),
                    ),
                    orElse: () => const SizedBox(),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
