// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryResponse _$CategoryResponseFromJson(Map<String, dynamic> json) =>
    CategoryResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      categoryDataWrapper: json['data'] == null
          ? null
          : CategoryDataWrapper.fromJson(json['data'] as Map<String, dynamic>),
    );

CategoryDataWrapper _$CategoryDataWrapperFromJson(Map<String, dynamic> json) =>
    CategoryDataWrapper(
      currentPage: (json['current_page'] as num?)?.toInt(),
      categories: (json['data'] as List<dynamic>?)
          ?.map((e) => CategoryData.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String?,
      from: (json['from'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
      lastPageUrl: json['last_page_url'] as String?,
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String?,
      perPage: (json['per_page'] as num?)?.toInt(),
      prevPageUrl: json['prev_page_url'] as String?,
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

CategoryData _$CategoryDataFromJson(Map<String, dynamic> json) => CategoryData(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
    );
