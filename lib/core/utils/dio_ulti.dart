import 'package:app_template_setup/core/constants/common_constant.dart';
import 'package:app_template_setup/core/constants/key_constant.dart';
import 'package:app_template_setup/core/helpers/dio_log_helper.dart';
import 'package:app_template_setup/core/helpers/navigation_helper.dart';
import 'package:app_template_setup/core/helpers/secure_storage_helper.dart';
import 'package:app_template_setup/setup/env.setup.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/web.dart';

Dio dioInterceptor(SecureStorageHelper secureStorage, NavigationHelper navigation) {
  Dio dio = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: CommonConstant.receiveTimeOut),
      receiveTimeout: const Duration(seconds: CommonConstant.connectionTimeOut),
      sendTimeout: const Duration(seconds: CommonConstant.sendTimeout),
      baseUrl: EnvSetUp.baseUrl,
    ),
  );

  dio.interceptors.addAll({
    InterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) async {
        if (options.uri.toString().contains('/users/login')) {
          return handler.next(options);
        }

        final token = await secureStorage.getAuthToken();
        options.headers = {
          ...options.headers,
          'Authorization': 'Bearer $token',
        };

        return handler.next(options);
      },
      onResponse: (Response response, ResponseInterceptorHandler handler) async {
        try {
          if (response.data == null) {
            return handler.next(response);
          }

          if (response.data is Map<String, dynamic>) {
            final items = response.data['items'];
            if (items is Map<String, dynamic>) {
              final accessToken = items['token'];
              final refreshToken = items['refresh_token'];

              if (accessToken is String && refreshToken is String) {
                await secureStorage.saveAuthToken(accessToken);
                await secureStorage.saveRefreshToken(refreshToken);
              }
            }
          } else {
            debugPrint('Unexpected response structure: ${response.data}');
          }
          handler.next(response);
        } catch (e) {
          debugPrint('Error in onResponse interceptor: $e');
          handler.next(response);
        }
      },
      onError: (DioException error, ErrorInterceptorHandler handler) async {
        final errorStatusCode = error.response?.statusCode ?? 200;
        Logger().d("statusCode : $errorStatusCode");

        final isExpriedToken = errorStatusCode == 401 || errorStatusCode == 403;
        if (isExpriedToken) {
          await secureStorage.deleteSecureStorage(KeyConstant.keyAuthToken);
          return;
        }

        return handler.next(error);
      },
    ),
    if (!kReleaseMode) CustomLogInterceptor(requestBody: true, responseBody: true),
  });

  return dio;
}
