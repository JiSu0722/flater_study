import 'package:dio/dio.dart';
import 'url.dart';

class Server {
  final Dio _dio = Dio(BaseOptions(baseUrl: Url.CJS_BASE_URL));

  Future<Response<dynamic>> getReq(int page, int size, String type) async {
    final url = Url.WIKI+'/list/$page/$size/${type}'; // 여기서 API endpoint를 직접 지정

    const token = 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJjanMwNzIyIiwiaXNzIjoiWkVTIiwiaWF0IjoxNzAxODM5MjA3fQ.TFPRBpKGm3kZyJgcAMRTmokpcP_FOEe97R82OHYK9yk';
    try {
      _dio.options.headers['Authorization'] = 'Bearer $token';
      _dio.options.headers['Content-Type'] = 'application/json';

      final response = await _dio.get(url, options:  Options(extra: {"refresh":true}));
      return response;
    } catch (e) {
      print("Error occurred: $e");
      throw e; // 예외를 다시 던지거나, 에러 처리 방식에 맞게 수정
    }
  }
}

final Server server = Server();
