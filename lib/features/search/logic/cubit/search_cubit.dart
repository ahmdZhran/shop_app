import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/features/search/logic/cubit/search_state.dart';

import '../../data/repo/repo.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this._searchRepo) : super(const SearchState.initial());

  final SearchRepo _searchRepo;

  void searchOnProducts(String query) async {
    emit(const SearchState.searchLoading());
    final response = await _searchRepo.searchOnProducts(query);
    response.when(success: (products) {
      emit(SearchState.searchSuccess(products));
    }, failure: (error) {
      emit(SearchState.searchError(error.apiErrorModel.message ?? ""));
    });
  }
}
