import 'package:dio/dio.dart';

import '../app/constants/common.dart';

class DioService {
  static Dio getInstance() {
    final dio = Dio(
      BaseOptions(
        baseUrl: Common.baseUrl,
        connectTimeout: 120 * 1000, // 120 seconds
        receiveTimeout: 120 * 1000, // 120 seconds
        sendTimeout: 120 * 1000, // 120 seconds
      ),
    );

    return dio;
  }
}
