import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/category_models/category_response.dart';
import '../../data/models/home_products_model/home_products_response.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  // category states
  const factory HomeState.categoryLoading() = CategoryLoading;
  const factory HomeState.categorySuccess(CategoryResponse categoryResponse) =
      CategorySuccess;
  const factory HomeState.categoryError({required String error}) =
      CategoryError;

  // products states
  const factory HomeState.productsLoading() = ProductsLoading;

  const factory HomeState.productsSuccess(
      HomeProductsResponse productResponse) = ProductsSuccess;

  const factory HomeState.productsError({required String error}) =
      ProductsError;
}
