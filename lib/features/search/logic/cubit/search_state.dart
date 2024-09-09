import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../home/data/models/home_products_model/home_products_response.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;

  const factory SearchState.searchLoading() = SearchLoading;

  const factory SearchState.searchSuccess(List<ProductDetails> products) =
      SearchSuccess;

  const factory SearchState.searchError(String error) = SearchError;
}
