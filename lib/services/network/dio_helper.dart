import 'package:dio/dio.dart';
import 'package:weather_app/presentation/resources/constant_manager.dart';


class DioHelper {
  static Dio? _dio;

  static init() {
    BaseOptions baseOptions = BaseOptions(
      baseUrl: ConstantsManger.BASE_URL,
      receiveDataWhenStatusError: true,
      connectTimeout: 20 * 1000,
      receiveTimeout: 20 * 1000,
    );
    _dio = Dio(baseOptions);
  }
  

  Future<Response> getData(
      {required path, required Map<String, dynamic> map}) async {
    return await _dio!.get(path, queryParameters: map);
  }

}
