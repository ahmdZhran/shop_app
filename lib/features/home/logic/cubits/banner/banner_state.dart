import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/banners_models/banner_response.dart';

part  'banner_state.freezed.dart';

@freezed
class BannerState with _$BannerState {
  const factory BannerState.initial() = _Initial;

  const factory BannerState.bannerLoading() = BannerLoading;
  const factory BannerState.bannerSuccess(BannerResponse bannerResponse) =
      BannerSuccess;
  const factory BannerState.bannerError({required String error}) = BannerError;
}
