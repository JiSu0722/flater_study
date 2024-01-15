import 'package:adroid_study/domain/model/Login.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';
part 'login_state.g.dart';

@freezed
class LoginState with _$LoginState {
  factory LoginState({required Login? login, required String? message}) = _LoginState;
  factory LoginState.fromJson(Map<String, dynamic> json) => _$LoginStateFromJson(json);
}

