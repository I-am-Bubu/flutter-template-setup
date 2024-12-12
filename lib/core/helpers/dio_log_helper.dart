import 'dart:convert';

import 'package:app_template_setup/core/utils/extention_utils.dart';
import 'package:dio/dio.dart';

/// [CustomLogInterceptor] is used to print logs during network requests.
/// It's better to add [CustomLogInterceptor] to the tail of the interceptor queue,
/// otherwise the changes made in the interceptor behind A will not be printed out.
/// This is because the execution of interceptors is in the order of addition.
class CustomLogInterceptor extends Interceptor {
  CustomLogInterceptor({
    this.request = true,
    this.requestHeader = true,
    this.requestBody = false,
    this.responseHeader = true,
    this.responseBody = false,
    this.error = true,
    this.logPrint = _debugPrint,
  });

  /// Print request [Options]
  bool request;

  /// Print request header [Options.headers]
  bool requestHeader;

  /// Print request data [Options.data]
  bool requestBody;

  /// Print [Response.data]
  bool responseBody;

  /// Print [Response.headers]
  bool responseHeader;

  /// Print error message
  bool error;

  /// Log printer; defaults print log to console.
  /// In flutter, you'd better use debugPrint.
  /// you can also write log in a file, for example:
  ///```dart
  ///  final file=File("./log.txt");
  ///  final sink=file.openWrite();
  ///  dio.interceptors.add(LogInterceptor(logPrint: sink.writeln));
  ///  ...
  ///  await sink.close();
  ///```
  void Function(Object object) logPrint;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    String splitServiceApi = options.uri.toString().split('/').last;
    logPrint('|☣| ✪✪✪✦✪✪✪ Request ✪✪✪✦✪✪✪ |☣| ${splitServiceApi.toCapitalize()} |☣|');
    _printKV('uri', '${options.method} | ${options.uri}');

    if (request) {
      // _printKV('responseType', options.responseType.toString());
      // _printKV('connectTimeout', options.connectTimeout);
    }
    if (requestHeader) {
      logPrint('headers:');

      final isEmptyMap = options.headers.isEmpty;
      if (isEmptyMap) {
        logPrint(' null');
      } else {
        options.headers.forEach((key, v) => _printKV(' $key', key == 'Authorization' ? '** ******' : v));
      }
    }
    if (requestBody) {
      logPrint('request body:');
      _printAll(' ${jsonEncode(options.data)}');
    }
    logPrint('');

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    String splitServiceApi = response.requestOptions.uri.toString().split('/').last;
    logPrint('|☣| ✦✦✦✪✦✦✦ Response ✦✦✦✪✦✦✦ |☣| ${splitServiceApi.toCapitalize()} |☣|');
    _printResponse(response);

    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (error) {
      String splitServiceApi = err.requestOptions.uri.toString().split('/').last;

      logPrint('|☣| ✦✦✦✪✦✦✦ Dio Exception ✦✦✦✪✦✦✦ |☣| ${splitServiceApi.toCapitalize()} |☣|');
      if (err.response != null) _printResponse(err.response!);
    }

    handler.next(err);
  }

  void _printResponse(Response response) {
    _printKV('uri', response.requestOptions.uri);
    if (responseHeader) {
      _printKV('statusCode', response.statusCode);
      if (response.isRedirect == true) _printKV('redirect', response.realUri);
    }
    if (responseBody) {
      logPrint('response body:');
      _printAll(' $response');
    }

    logPrint('');
  }

  void _printKV(String key, Object? v) {
    logPrint('$key: $v');
  }

  void _printAll(msg) {
    msg.toString().split('\n').forEach(logPrint);
  }
}

void _debugPrint(Object? object) {
  assert(() {
    print(object);
    return true;
  }());
}
