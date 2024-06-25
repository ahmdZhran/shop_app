import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_response.g.dart';

@JsonSerializable()
class CategoryResponse {
  bool? status;
  String? message;
  @JsonKey(name: 'data')
  List<CategoryData>? categoryData;
  CategoryResponse({
    this.status,
    this.message,
    this.categoryData,
  });

  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseFromJson(json);
}

@JsonSerializable()
class CategoryData {
  int? id;
  String? name;
  String? image;
  CategoryData({
    this.id,
    this.name,
    this.image,
  });
  factory CategoryData.fromJson(Map<String, dynamic> json) =>
      _$CategoryDataFromJson(json);
}
