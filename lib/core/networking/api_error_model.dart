
 
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error_model.g.dart'; 

@JsonSerializable()
class ApiErrorModel {
  final String? message;
  final int? statusCode;

  ApiErrorModel({required this.message, this.statusCode,});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

  
}
