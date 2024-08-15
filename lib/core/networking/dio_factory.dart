import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../helper/shared_prefrence.dart';
import '../helper/shared_prefrence_keys.dart';
import 'api_interceptor.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? dio;

  static Dio getDio({String? customToken, String? contentType}) {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioHeaders(customToken: customToken, contentType: contentType);
      addDioInterceptor();

      return dio!;
    } else {
      // Update headers if dio is already created
      addDioHeaders(customToken: customToken, contentType: contentType);
      return dio!;
    }
  }

  static void addDioHeaders({String? customToken, String? contentType}) async {
    dio?.options.headers = {
      'Accept': 'application/json',
      'Authorization':
          'Bearer ${customToken ?? await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken)}',
      if (contentType != null) 'Content-Type': contentType,
      // Adding the custom token for specific use cases
      'Custom-Token':
          'sk_test_51PfL9UFyJmiXsTheSMHbJA6ynmuB6JXVBGXeLeBHmyjSgCSJBea3PY0HEedCRcwWyZPq9rCBo4zkPrGtUxXD1R3I008af9xqfO',
    };
  }

  static Future<void> setCustomToken(String token,
      {String? contentType}) async {
    dio?.options.headers = {
      'Authorization': 'Bearer $token',
      'Content-Type': Headers.formUrlEncodedContentType,
      'Custom-Token':
          'sk_test_51PfL9UFyJmiXsTheSMHbJA6ynmuB6JXVBGXeLeBHmyjSgCSJBea3PY0HEedCRcwWyZPq9rCBo4zkPrGtUxXD1R3I008af9xqfO',
    };
  }

  static void setTokenIntoHeaderAfterLogin(String token) async {
    dio?.options.headers['Authorization'] = 'Bearer $token';
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(ApiInterceptor());
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}
