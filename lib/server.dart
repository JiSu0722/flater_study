import 'package:dio/dio.dart';

const _API_PREFIX_TEST = 'http://121.179.72.70:5500/api/v1/';

class Server {
  Future<void> getReq() async {
    const url = 'process/type/list/1/10/2GN57OO12S';
    try {
      Response response;
      Dio dio = Dio();
      response = await dio.get(_API_PREFIX_TEST + url);
      print(response.toString());
    } catch (e) {
      print("Error occurred: $e");
    }
  }
}
Server server = Server();
