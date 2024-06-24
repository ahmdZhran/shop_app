import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_response.g.dart';

@JsonSerializable()
class BannerResponse {
  bool? status;
  String? message;
  @JsonKey(name: 'data')
  List<BannerData>? bannerData;
  BannerResponse({this.status, this.message, this.bannerData});

  factory BannerResponse.fromJson(Map<String, dynamic> json) =>
      _$BannerResponseFromJson(json);
}

@JsonSerializable()
class BannerData {
  int? id;
  String? image;
  dynamic category;
  dynamic product;

  BannerData({this.id, this.image, this.category, this.product});
  factory BannerData.fromJson(Map<String, dynamic> json) =>
      _$BannerDataFromJson(json);
}
