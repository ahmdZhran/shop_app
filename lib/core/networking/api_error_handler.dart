import 'package:dio/dio.dart';
import 'api_constants.dart';
import 'api_error_model.dart';

enum DataSource {
  noContent,
  badRequest,
  forbidden,
  unauthorized,
  notFound,
  internalServerError,
  connectTimeout,
  cancel,
  receiveTimeout,
  sendTimeout,
  cacheError,
  noInternetConnection,
  defaultError
}

class ResponseCode {
  static const int success = 200; // success with data
  static const int noContent = 201; // success with no data (no content)
  static const int badRequest = 400; // failure, API rejected request
  static const int unauthorized = 401; // failure, user is not authorized
  static const int forbidden = 403; // failure, API rejected request
  static const int internalServerError = 500; // failure, crash in server side
  static const int notFound = 404; // failure, not found
  static const int apiLogicError = 422; // API, LOGIC ERROR

  // Local status codes
  static const int connectTimeout = -1;
  static const int cancel = -2;
  static const int receiveTimeout = -3;
  static const int sendTimeout = -4;
  static const int cacheError = -5;
  static const int noInternetConnection = -6;
  static const int defaultError = -7;
}

class ResponseMessage {
  static const String noContent = ApiErrors.noContent;
  static const String badRequest = ApiErrors.badRequestError;
  static const String unauthorized = ApiErrors.unauthorizedError;
  static const String forbidden = ApiErrors.forbiddenError;
  static const String internalServerError = ApiErrors.internalServerError;
  static const String notFound = ApiErrors.notFoundError;

  // Local status codes
  static String connectTimeout = ApiErrors.timeoutError;
  static String cancel = ApiErrors.defaultError;
  static String receiveTimeout = ApiErrors.timeoutError;
  static String sendTimeout = ApiErrors.timeoutError;
  static String cacheError = ApiErrors.cacheError;
  static String noInternetConnection = ApiErrors.noInternetError;
  static String defaultError = ApiErrors.defaultError;
}

extension DataSourceExtension on DataSource {
  ApiErrorModel getFailure() {
    switch (this) {
      case DataSource.noContent:
        return ApiErrorModel(status: false, message: ResponseMessage.noContent, data: null);
      case DataSource.badRequest:
        return ApiErrorModel(status: false, message: ResponseMessage.badRequest, data: null);
      case DataSource.forbidden:
        return ApiErrorModel(status: false, message: ResponseMessage.forbidden, data: null);
      case DataSource.unauthorized:
        return ApiErrorModel(status: false, message: ResponseMessage.unauthorized, data: null);
      case DataSource.notFound:
        return ApiErrorModel(status: false, message: ResponseMessage.notFound, data: null);
      case DataSource.internalServerError:
        return ApiErrorModel(status: false, message: ResponseMessage.internalServerError, data: null);
      case DataSource.connectTimeout:
        return ApiErrorModel(status: false, message: ResponseMessage.connectTimeout, data: null);
      case DataSource.cancel:
        return ApiErrorModel(status: false, message: ResponseMessage.cancel, data: null);
      case DataSource.receiveTimeout:
        return ApiErrorModel(status: false, message: ResponseMessage.receiveTimeout, data: null);
      case DataSource.sendTimeout:
        return ApiErrorModel(status: false, message: ResponseMessage.sendTimeout, data: null);
      case DataSource.cacheError:
        return ApiErrorModel(status: false, message: ResponseMessage.cacheError, data: null);
      case DataSource.noInternetConnection:
        return ApiErrorModel(status: false, message: ResponseMessage.noInternetConnection, data: null);
      case DataSource.defaultError:
        return ApiErrorModel(status: false, message: ResponseMessage.defaultError, data: null);
    }
  }
}

class ErrorHandler implements Exception {
  late ApiErrorModel apiErrorModel;

  ErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      apiErrorModel = _handleError(error);
    } else {
      apiErrorModel = DataSource.defaultError.getFailure();
    }
  }
}

ApiErrorModel _handleError(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
      return DataSource.connectTimeout.getFailure();
    case DioExceptionType.sendTimeout:
      return DataSource.sendTimeout.getFailure();
    case DioExceptionType.receiveTimeout:
      return DataSource.receiveTimeout.getFailure();
    case DioExceptionType.badResponse:
    case DioExceptionType.unknown:
      if (error.response != null) {
        return ApiErrorModel.fromJson(error.response!.data);
      } else {
        return DataSource.defaultError.getFailure();
      }
    case DioExceptionType.cancel:
      return DataSource.cancel.getFailure();
    case DioExceptionType.connectionError:
    case DioExceptionType.badCertificate:
      return DataSource.defaultError.getFailure();
  }
}
