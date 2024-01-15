import 'package:freezed_annotation/freezed_annotation.dart';

part 'Login.freezed.dart';
part 'Login.g.dart';
@freezed
class Login with _$Login {
  factory Login({
    required String user_name,
    required String image_url,
    required String company_name,
    required String authority,
    required String company_code,
    required String id,
    required String token,
    List<dynamic>? authoritiesList, // authoritiesList를 선택적 필드로 변경
  }) = _Login;

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);
}