import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/models/home_products_model/home_products_response.dart';

part 'products_state.freezed.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState.initial() = _Initial;

  const factory ProductsState.productsLoading() = ProductsLoading;

  const factory ProductsState.productsSuccess(
      HomeProductsResponse productResponse) = ProductsSuccess;

  const factory ProductsState.productsError({required String error}) =
      ProductsError;
}
