import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class MovieClient extends DioForNative implements Dio {
  final baseUrl = dotenv.env['BASE_URL'];

  MovieClient() {
    final options = BaseOptions(
      baseUrl: baseUrl!,
    );
    this.options = options;
    interceptors.add(InterceptorsWrapper(
      onRequest: onRequest,
    ));
  }
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final key = dotenv.env['APIKEY'];

    options.headers.addAll({'Authorization': 'Bearer $key!'});
    return handler.next(options);
  }
}
