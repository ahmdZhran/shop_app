import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;

  const factory SearchState.searchLoading() = SearchLoading;

  const factory SearchState.searchSuccess(List<dynamic> products) =
      SearchSuccess;

  const factory SearchState.searchError(String error) = SearchError;
}
