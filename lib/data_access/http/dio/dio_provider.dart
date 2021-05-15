import 'package:dio/dio.dart';

///
/// DIO for requests
///
// class DioProvider {
Dio get dioInstance {
  final dio = Dio();
  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options) {
      // DateTime now = DateTime.now();
      // logger.d(now);
      // logger.d(now.add(Duration(hours: 3, minutes: 25)));
    },
    onResponse: (e) {
      //
    },
  ));
  return dio;
}
// }
