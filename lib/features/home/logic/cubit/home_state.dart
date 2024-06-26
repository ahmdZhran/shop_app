
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_app/features/home/data/models/category_models/category_response.dart';

import '../../data/models/banners_models/banner_response.dart';

part 'home_state.freezed.dart';
@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  // banner states 
  const factory HomeState.bannerLoading() = BannerLoading;
  const factory HomeState.bannerSuccess(BannerResponse bannerResponse) = BannerSuccess;
  const factory HomeState.bannerError({required String error}) = BannerError;

  // category states
  const factory HomeState.categoryLoading() = CategoryLoading;
  const factory HomeState.categorySuccess(CategoryResponse bannerResponse) = CategorySuccess;
  const factory HomeState.categoryError({required String error}) = CategoryError;

}
