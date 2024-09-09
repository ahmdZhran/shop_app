import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/category_models/category_response.dart';

part 'categories_state.freezed.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.initial() = _Initial;
  const factory CategoriesState.categoryLoading() = CategoryLoading;
  const factory CategoriesState.categorySuccess(
      CategoryResponse categoryResponse) = CategoriesSuccess;
  const factory CategoriesState.categoryError({required String error}) =
      CategoryError;
}
