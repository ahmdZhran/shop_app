import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repo/search_repo.dart';
import 'search_state.dart';

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
