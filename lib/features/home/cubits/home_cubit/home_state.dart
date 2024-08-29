import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/banners_models/banner_response.dart';
import '../../data/models/category_models/category_response.dart';
import '../../data/models/home_products_model/home_products_response.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.bannerLoading() = _BannerLoading;
  const factory HomeState.bannerSuccess(BannerResponse bannerResponse) =
      _BannerSuccess;
  const factory HomeState.bannerError({required String error}) = _BannerError;

  const factory HomeState.categoryLoading() = _CategoryLoading;
  const factory HomeState.categorySuccess(CategoryResponse categoryResponse) =
      _CategorySuccess;
  const factory HomeState.categoryError({required String error}) =
      _CategoryError;

  const factory HomeState.productsLoading() = _ProductsLoading;
  const factory HomeState.productsSuccess(
      HomeProductsResponse productResponse) = _ProductsSuccess;
  const factory HomeState.productsError({required String error}) =
      _ProductsError;
}
