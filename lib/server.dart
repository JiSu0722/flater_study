import 'package:dio/dio.dart';

const _API_PREFIX_TEST = 'http://121.179.72.70:5500/api/v1/';

class Server {
  Future<Response<dynamic>> getReq(int page, int size, String type) async {
    final url = 'wiki/list/$page/$size/${type}';
    const token = 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJjanMwNzIyIiwiaXNzIjoiWkVTIiwiaWF0IjoxNzAxMjMxMzUxfQ.McrY60N-eo4_zbYg2uC7mIrUZMEqDT-L7COqumCg6E4';

    try {
      Dio dio = Dio();
      dio.options.headers['Authorization'] = 'Bearer $token';
      dio.options.headers['Content-Type'] = 'application/json';
      Response response = await dio.get(_API_PREFIX_TEST + url);
      return response;
    } catch (e) {
      print("Error occurred: $e");
      throw e; // 예외를 다시 던지거나, 에러 처리 방식에 맞게 수정
    }
  }
}
Server server = Server();
