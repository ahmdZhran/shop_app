import 'package:dio/dio.dart';
import 'api_constants.dart';
import 'api_error_model.dart';

enum DataSource {
  NO_CONTENT,
  BAD_REQUEST,
  FORBIDDEN,
  UNAUTHORISED,
  NOT_FOUND,
  INTERNAL_SERVER_ERROR,
  CONNECT_TIMEOUT,
  CANCEL,
  RECEIVE_TIMEOUT,
  SEND_TIMEOUT,
  CACHE_ERROR,
  NO_INTERNET_CONNECTION,
  DEFAULT
}

class ResponseCode {
  static const int SUCCESS = 200; // success with data
  static const int NO_CONTENT = 201; // success with no data (no content)
  static const int BAD_REQUEST = 400; // failure, API rejected request
  static const int UNAUTHORISED = 401; // failure, user is not authorised
  static const int FORBIDDEN = 403; //  failure, API rejected request
  static const int INTERNAL_SERVER_ERROR = 500; // failure, crash in server side
  static const int NOT_FOUND = 404; // failure, not found
  static const int API_LOGIC_ERROR = 422; // API , LOGIC ERROR

  // local status code
  static const int CONNECT_TIMEOUT = -1;
  static const int CANCEL = -2;
  static const int RECEIVE_TIMEOUT = -3;
  static const int SEND_TIMEOUT = -4;
  static const int CACHE_ERROR = -5;
  static const int NO_INTERNET_CONNECTION = -6;
  static const int DEFAULT = -7;
}

class ResponseMessage {
  static const String NO_CONTENT =
      ApiErrors.noContent; // success with no data (no content)
  static const String BAD_REQUEST =
      ApiErrors.badRequestError; // failure, API rejected request
  static const String UNAUTHORISED =
      ApiErrors.unauthorizedError; // failure, user is not authorised
  static const String FORBIDDEN =
      ApiErrors.forbiddenError; //  failure, API rejected request
  static const String INTERNAL_SERVER_ERROR =
      ApiErrors.internalServerError; // failure, crash in server side
  static const String NOT_FOUND =
      ApiErrors.notFoundError; // failure, crash in server side

  // local status code
  static String CONNECT_TIMEOUT = ApiErrors.timeoutError;
  static String CANCEL = ApiErrors.defaultError;
  static String RECEIVE_TIMEOUT = ApiErrors.timeoutError;
  static String SEND_TIMEOUT = ApiErrors.timeoutError;
  static String CACHE_ERROR = ApiErrors.cacheError;
  static String NO_INTERNET_CONNECTION = ApiErrors.noInternetError;
  static String DEFAULT = ApiErrors.defaultError;
}

extension DataSourceExtension on DataSource {
  ApiErrorModel getFailure() {
    switch (this) {
      case DataSource.NO_CONTENT:
        return ApiErrorModel(
            status: false, message: ResponseMessage.NO_CONTENT, data: null);
      case DataSource.BAD_REQUEST:
        return ApiErrorModel(
            status: false, message: ResponseMessage.BAD_REQUEST, data: null);
      case DataSource.FORBIDDEN:
        return ApiErrorModel(
            status: false, message: ResponseMessage.FORBIDDEN, data: null);
      case DataSource.UNAUTHORISED:
        return ApiErrorModel(
            status: false, message: ResponseMessage.UNAUTHORISED, data: null);
      case DataSource.NOT_FOUND:
        return ApiErrorModel(
            status: false, message: ResponseMessage.NOT_FOUND, data: null);
      case DataSource.INTERNAL_SERVER_ERROR:
        return ApiErrorModel(
            status: false,
            message: ResponseMessage.INTERNAL_SERVER_ERROR,
            data: null);
      case DataSource.CONNECT_TIMEOUT:
        return ApiErrorModel(
            status: false,
            message: ResponseMessage.CONNECT_TIMEOUT,
            data: null);
      case DataSource.CANCEL:
        return ApiErrorModel(
            status: false, message: ResponseMessage.CANCEL, data: null);
      case DataSource.RECEIVE_TIMEOUT:
        return ApiErrorModel(
            status: false,
            message: ResponseMessage.RECEIVE_TIMEOUT,
            data: null);
      case DataSource.SEND_TIMEOUT:
        return ApiErrorModel(
            status: false, message: ResponseMessage.SEND_TIMEOUT, data: null);
      case DataSource.CACHE_ERROR:
        return ApiErrorModel(
            status: false, message: ResponseMessage.CACHE_ERROR, data: null);
      case DataSource.NO_INTERNET_CONNECTION:
        return ApiErrorModel(
            status: false,
            message: ResponseMessage.NO_INTERNET_CONNECTION,
            data: null);
      case DataSource.DEFAULT:
        return ApiErrorModel(
            status: false, message: ResponseMessage.DEFAULT, data: null);
    }
  }
}

class ErrorHandler implements Exception {
  late ApiErrorModel apiErrorModel;

  ErrorHandler.handle(dynamic error) {
    if (error is String) {
      // dio error so its an error from response of the API or from dio itself
      apiErrorModel = ApiErrorModel(
        status: false,
        message: error,
      );
    } else {
      // default error
      apiErrorModel = DataSource.DEFAULT.getFailure();
    }
  }
}

ApiErrorModel _handleError(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
      return DataSource.CONNECT_TIMEOUT.getFailure();
    case DioExceptionType.sendTimeout:
      return DataSource.SEND_TIMEOUT.getFailure();
    case DioExceptionType.receiveTimeout:
      return DataSource.RECEIVE_TIMEOUT.getFailure();
    case DioExceptionType.badResponse:
      if (error.response != null &&
          error.response?.statusCode != null &&
          error.response?.statusMessage != null) {
        return ApiErrorModel.fromJson(error.response!.data);
      } else {
        return DataSource.DEFAULT.getFailure();
      }
    case DioExceptionType.unknown:
      if (error.response != null &&
          error.response?.statusCode != null &&
          error.response?.statusMessage != null) {
        return ApiErrorModel.fromJson(error.response!.data);
      } else {
        return DataSource.DEFAULT.getFailure();
      }
    case DioExceptionType.cancel:
      return DataSource.CANCEL.getFailure();
    case DioExceptionType.connectionError:
      return DataSource.DEFAULT.getFailure();
    case DioExceptionType.badCertificate:
      return DataSource.DEFAULT.getFailure();
  }
}

class ApiInternalStatus {
  static const int SUCCESS = 0;
  static const int FAILURE = 1;
}
