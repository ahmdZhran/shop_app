// import 'package:freezed_annotation/freezed_annotation.dart';
// part 'category_response.g.dart';

// @JsonSerializable()
// class CategoryResponse {
//   bool? status;
//   String? message;
//   @JsonKey(name: 'data')
//   List<CategoryData>? categoryData;
//   CategoryResponse({
//     this.status,
//     this.message,
//     this.categoryData,
//   });

//   factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
//       _$CategoryResponseFromJson(json);
// }

// @JsonSerializable()
// class CategoryData {
//   int? id;
//   String? name;
//   String? image;
//   CategoryData({
//     this.id,
//     this.name,
//     this.image,
//   });
//   factory CategoryData.fromJson(Map<String, dynamic> json) =>
//       _$CategoryDataFromJson(json);
// }
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_response.g.dart';

@JsonSerializable()
class CategoryResponse {
  bool? status;
  String? message;
  @JsonKey(name: 'data')
  CategoryDataWrapper? categoryDataWrapper;

  CategoryResponse({this.status, this.message, this.categoryDataWrapper});

  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryResponseToJson(this);
}

@JsonSerializable()
class CategoryDataWrapper {
  @JsonKey(name: 'current_page')
  int? currentPage;
  @JsonKey(name: 'data')
  List<CategoryData>? categories;
  @JsonKey(name: 'first_page_url')
  String? firstPageUrl;
  int? from;
  @JsonKey(name: 'last_page')
  int? lastPage;
  @JsonKey(name: 'last_page_url')
  String? lastPageUrl;
  @JsonKey(name: 'next_page_url')
  String? nextPageUrl;
  String? path;
  @JsonKey(name: 'per_page')
  int? perPage;
  @JsonKey(name: 'prev_page_url')
  String? prevPageUrl;
  int? to;
  int? total;

  CategoryDataWrapper({
    this.currentPage,
    this.categories,
    this.firstPageUrl,
    this.from,
    this.lastPage,
    this.lastPageUrl,
    this.nextPageUrl,
    this.path,
    this.perPage,
    this.prevPageUrl,
    this.to,
    this.total,
  });

  factory CategoryDataWrapper.fromJson(Map<String, dynamic> json) =>
      _$CategoryDataWrapperFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryDataWrapperToJson(this);
}

@JsonSerializable()
class CategoryData {
  int? id;
  String? name;
  String? image;

  CategoryData({this.id, this.name, this.image});

  factory CategoryData.fromJson(Map<String, dynamic> json) =>
      _$CategoryDataFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryDataToJson(this);
}
