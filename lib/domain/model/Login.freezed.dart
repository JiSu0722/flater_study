// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Login _$LoginFromJson(Map<String, dynamic> json) {
  return _Login.fromJson(json);
}

/// @nodoc
mixin _$Login {
  String get user_name => throw _privateConstructorUsedError;
  String get image_url => throw _privateConstructorUsedError;
  String get company_name => throw _privateConstructorUsedError;
  String get authority => throw _privateConstructorUsedError;
  String get company_code => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  List<dynamic>? get authoritiesList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginCopyWith<Login> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) then) =
      _$LoginCopyWithImpl<$Res, Login>;
  @useResult
  $Res call(
      {String user_name,
      String image_url,
      String company_name,
      String authority,
      String company_code,
      String id,
      String token,
      List<dynamic>? authoritiesList});
}

/// @nodoc
class _$LoginCopyWithImpl<$Res, $Val extends Login>
    implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user_name = null,
    Object? image_url = null,
    Object? company_name = null,
    Object? authority = null,
    Object? company_code = null,
    Object? id = null,
    Object? token = null,
    Object? authoritiesList = freezed,
  }) {
    return _then(_value.copyWith(
      user_name: null == user_name
          ? _value.user_name
          : user_name // ignore: cast_nullable_to_non_nullable
              as String,
      image_url: null == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String,
      company_name: null == company_name
          ? _value.company_name
          : company_name // ignore: cast_nullable_to_non_nullable
              as String,
      authority: null == authority
          ? _value.authority
          : authority // ignore: cast_nullable_to_non_nullable
              as String,
      company_code: null == company_code
          ? _value.company_code
          : company_code // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      authoritiesList: freezed == authoritiesList
          ? _value.authoritiesList
          : authoritiesList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> implements $LoginCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String user_name,
      String image_url,
      String company_name,
      String authority,
      String company_code,
      String id,
      String token,
      List<dynamic>? authoritiesList});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$LoginCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user_name = null,
    Object? image_url = null,
    Object? company_name = null,
    Object? authority = null,
    Object? company_code = null,
    Object? id = null,
    Object? token = null,
    Object? authoritiesList = freezed,
  }) {
    return _then(_$LoginImpl(
      user_name: null == user_name
          ? _value.user_name
          : user_name // ignore: cast_nullable_to_non_nullable
              as String,
      image_url: null == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String,
      company_name: null == company_name
          ? _value.company_name
          : company_name // ignore: cast_nullable_to_non_nullable
              as String,
      authority: null == authority
          ? _value.authority
          : authority // ignore: cast_nullable_to_non_nullable
              as String,
      company_code: null == company_code
          ? _value.company_code
          : company_code // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      authoritiesList: freezed == authoritiesList
          ? _value._authoritiesList
          : authoritiesList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginImpl implements _Login {
  _$LoginImpl(
      {required this.user_name,
      required this.image_url,
      required this.company_name,
      required this.authority,
      required this.company_code,
      required this.id,
      required this.token,
      final List<dynamic>? authoritiesList})
      : _authoritiesList = authoritiesList;

  factory _$LoginImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginImplFromJson(json);

  @override
  final String user_name;
  @override
  final String image_url;
  @override
  final String company_name;
  @override
  final String authority;
  @override
  final String company_code;
  @override
  final String id;
  @override
  final String token;
  final List<dynamic>? _authoritiesList;
  @override
  List<dynamic>? get authoritiesList {
    final value = _authoritiesList;
    if (value == null) return null;
    if (_authoritiesList is EqualUnmodifiableListView) return _authoritiesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Login(user_name: $user_name, image_url: $image_url, company_name: $company_name, authority: $authority, company_code: $company_code, id: $id, token: $token, authoritiesList: $authoritiesList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.user_name, user_name) ||
                other.user_name == user_name) &&
            (identical(other.image_url, image_url) ||
                other.image_url == image_url) &&
            (identical(other.company_name, company_name) ||
                other.company_name == company_name) &&
            (identical(other.authority, authority) ||
                other.authority == authority) &&
            (identical(other.company_code, company_code) ||
                other.company_code == company_code) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.token, token) || other.token == token) &&
            const DeepCollectionEquality()
                .equals(other._authoritiesList, _authoritiesList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      user_name,
      image_url,
      company_name,
      authority,
      company_code,
      id,
      token,
      const DeepCollectionEquality().hash(_authoritiesList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginImplToJson(
      this,
    );
  }
}

abstract class _Login implements Login {
  factory _Login(
      {required final String user_name,
      required final String image_url,
      required final String company_name,
      required final String authority,
      required final String company_code,
      required final String id,
      required final String token,
      final List<dynamic>? authoritiesList}) = _$LoginImpl;

  factory _Login.fromJson(Map<String, dynamic> json) = _$LoginImpl.fromJson;

  @override
  String get user_name;
  @override
  String get image_url;
  @override
  String get company_name;
  @override
  String get authority;
  @override
  String get company_code;
  @override
  String get id;
  @override
  String get token;
  @override
  List<dynamic>? get authoritiesList;
  @override
  @JsonKey(ignore: true)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
