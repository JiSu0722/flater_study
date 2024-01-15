import 'package:adroid_study/api/login_api.dart';
import 'package:adroid_study/api/wiki_api.dart';
import 'package:adroid_study/util/url.dart';
import 'package:dio/dio.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

Future<List<SingleChildWidget>> getProviders() async{
  Dio dio = Dio(BaseOptions(baseUrl: TEST_BASE_URL));

  WikiApi wikiViewModel = WikiApi(dio);
  LoginApi loginViewModel = LoginApi(dio);
  // 로그인 시에만 토큰을 설정하고, 로그아웃 시에는 헤더에서 제거할 수 있도록 설정
  loginViewModel.addListener(() {
    final loginState = loginViewModel.state;
    if (loginState.login != null) {
      final token = loginState.login!.token.split(' ')[1];
      if (token.isNotEmpty) {
        dio.options.headers['Authorization'] = 'Bearer $token';
      }
    } else {
      // 로그아웃 또는 토큰이 없는 경우 헤더 제거
      dio.options.headers.remove('Authorization');
    }
  });
  return [
    ChangeNotifierProvider(create:(_)=> wikiViewModel),
    ChangeNotifierProvider(create:(_)=> loginViewModel)
  ];
}