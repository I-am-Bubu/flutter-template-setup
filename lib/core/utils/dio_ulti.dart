import 'package:app_template_setup/core/constants/common_constant.dart';
import 'package:app_template_setup/core/helpers/dio_log_helper.dart';
import 'package:app_template_setup/core/helpers/navigation_helper.dart';
import 'package:app_template_setup/core/helpers/secure_storage_helper.dart';
import 'package:app_template_setup/setup/env.setup.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

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
    InterceptorsWrapper(),
    if (!kReleaseMode) CustomLogInterceptor(requestBody: true, responseBody: true),
  });

  return dio;
}
