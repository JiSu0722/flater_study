import 'package:adroid_study/domain/model/Login.dart';
import 'package:adroid_study/persentation/login/login_state.dart';
import 'package:adroid_study/util/url.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class LoginApi with ChangeNotifier{
  final Dio dio;
  VoidCallback? onFailure;
  LoginApi(this.dio);

  LoginState _state = LoginState(login: null, message: null);
  LoginState get state => _state;

  Future<void> login(String id, String password) async {
    try {
      final response = await dio.post(LOGIN, data: {'id': id, 'password': password});
      if (response.statusCode == 200) {
        final responseData = response.data;
        if (responseData['data'] != null) {
          final Map<String, dynamic> data = responseData['data'] as Map<String, dynamic>;
          final login = Login.fromJson(data);
          _state = state.copyWith(login: login);
          notifyListeners();
        } else {
          final message = responseData['message'].toString();
          _state = state.copyWith(message: message);
          notifyListeners();
        }
      } else {
        throw Exception('Failed to fetch data');
      }
    } catch (e) {
      print('Login failed: $e');
      if (onFailure != null) {
        // 실패 콜백 호출하여 실패 상황 알림
        onFailure!();
      }
    }
  }
}