
import 'package:dio/dio.dart';
class DioHelper {
  static late Dio dio = Dio();
  static init() {
    dio = Dio(BaseOptions(
      baseUrl:'https://newsapi.org/',
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response> getData(
      {required String url, required Map<String, dynamic> query}) {
    return dio.get(
      // https://newsapi.org/v2/top-headlines?country=eg&apiKey=c9549d6d17f24a06a3405763441e9825&category=business

      url,
      queryParameters: query,
    );
  }
}
