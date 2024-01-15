// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wiki_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WikiState _$WikiStateFromJson(Map<String, dynamic> json) {
  return _WikiState.fromJson(json);
}

/// @nodoc
mixin _$WikiState {
  dynamic get wiki => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WikiStateCopyWith<WikiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WikiStateCopyWith<$Res> {
  factory $WikiStateCopyWith(WikiState value, $Res Function(WikiState) then) =
      _$WikiStateCopyWithImpl<$Res, WikiState>;
  @useResult
  $Res call({dynamic wiki, bool isLoading});
}

/// @nodoc
class _$WikiStateCopyWithImpl<$Res, $Val extends WikiState>
    implements $WikiStateCopyWith<$Res> {
  _$WikiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wiki = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      wiki: freezed == wiki
          ? _value.wiki
          : wiki // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WikiStateImplCopyWith<$Res>
    implements $WikiStateCopyWith<$Res> {
  factory _$$WikiStateImplCopyWith(
          _$WikiStateImpl value, $Res Function(_$WikiStateImpl) then) =
      __$$WikiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic wiki, bool isLoading});
}

/// @nodoc
class __$$WikiStateImplCopyWithImpl<$Res>
    extends _$WikiStateCopyWithImpl<$Res, _$WikiStateImpl>
    implements _$$WikiStateImplCopyWith<$Res> {
  __$$WikiStateImplCopyWithImpl(
      _$WikiStateImpl _value, $Res Function(_$WikiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wiki = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$WikiStateImpl(
      freezed == wiki
          ? _value.wiki
          : wiki // ignore: cast_nullable_to_non_nullable
              as dynamic,
      null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WikiStateImpl implements _WikiState {
  _$WikiStateImpl(this.wiki, this.isLoading);

  factory _$WikiStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$WikiStateImplFromJson(json);

  @override
  final dynamic wiki;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'WikiState(wiki: $wiki, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WikiStateImpl &&
            const DeepCollectionEquality().equals(other.wiki, wiki) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(wiki), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WikiStateImplCopyWith<_$WikiStateImpl> get copyWith =>
      __$$WikiStateImplCopyWithImpl<_$WikiStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WikiStateImplToJson(
      this,
    );
  }
}

abstract class _WikiState implements WikiState {
  factory _WikiState(final dynamic wiki, final bool isLoading) =
      _$WikiStateImpl;

  factory _WikiState.fromJson(Map<String, dynamic> json) =
      _$WikiStateImpl.fromJson;

  @override
  dynamic get wiki;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$WikiStateImplCopyWith<_$WikiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
