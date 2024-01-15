// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wiki_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WikiEvent<T> {
  int get page => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  String get authority => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int size, String authority, String type)
        loadWikiList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int size, String authority, String type)?
        loadWikiList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int size, String authority, String type)?
        loadWikiList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWikiList<T> value) loadWikiList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadWikiList<T> value)? loadWikiList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWikiList<T> value)? loadWikiList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WikiEventCopyWith<T, WikiEvent<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WikiEventCopyWith<T, $Res> {
  factory $WikiEventCopyWith(
          WikiEvent<T> value, $Res Function(WikiEvent<T>) then) =
      _$WikiEventCopyWithImpl<T, $Res, WikiEvent<T>>;
  @useResult
  $Res call({int page, int size, String authority, String type});
}

/// @nodoc
class _$WikiEventCopyWithImpl<T, $Res, $Val extends WikiEvent<T>>
    implements $WikiEventCopyWith<T, $Res> {
  _$WikiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? size = null,
    Object? authority = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      authority: null == authority
          ? _value.authority
          : authority // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadWikiListImplCopyWith<T, $Res>
    implements $WikiEventCopyWith<T, $Res> {
  factory _$$LoadWikiListImplCopyWith(_$LoadWikiListImpl<T> value,
          $Res Function(_$LoadWikiListImpl<T>) then) =
      __$$LoadWikiListImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int page, int size, String authority, String type});
}

/// @nodoc
class __$$LoadWikiListImplCopyWithImpl<T, $Res>
    extends _$WikiEventCopyWithImpl<T, $Res, _$LoadWikiListImpl<T>>
    implements _$$LoadWikiListImplCopyWith<T, $Res> {
  __$$LoadWikiListImplCopyWithImpl(
      _$LoadWikiListImpl<T> _value, $Res Function(_$LoadWikiListImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? size = null,
    Object? authority = null,
    Object? type = null,
  }) {
    return _then(_$LoadWikiListImpl<T>(
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      null == authority
          ? _value.authority
          : authority // ignore: cast_nullable_to_non_nullable
              as String,
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadWikiListImpl<T> implements LoadWikiList<T> {
  const _$LoadWikiListImpl(this.page, this.size, this.authority, this.type);

  @override
  final int page;
  @override
  final int size;
  @override
  final String authority;
  @override
  final String type;

  @override
  String toString() {
    return 'WikiEvent<$T>.loadWikiList(page: $page, size: $size, authority: $authority, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadWikiListImpl<T> &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.authority, authority) ||
                other.authority == authority) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, size, authority, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadWikiListImplCopyWith<T, _$LoadWikiListImpl<T>> get copyWith =>
      __$$LoadWikiListImplCopyWithImpl<T, _$LoadWikiListImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int size, String authority, String type)
        loadWikiList,
  }) {
    return loadWikiList(page, size, authority, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int size, String authority, String type)?
        loadWikiList,
  }) {
    return loadWikiList?.call(page, size, authority, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int size, String authority, String type)?
        loadWikiList,
    required TResult orElse(),
  }) {
    if (loadWikiList != null) {
      return loadWikiList(page, size, authority, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWikiList<T> value) loadWikiList,
  }) {
    return loadWikiList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadWikiList<T> value)? loadWikiList,
  }) {
    return loadWikiList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWikiList<T> value)? loadWikiList,
    required TResult orElse(),
  }) {
    if (loadWikiList != null) {
      return loadWikiList(this);
    }
    return orElse();
  }
}

abstract class LoadWikiList<T> implements WikiEvent<T> {
  const factory LoadWikiList(final int page, final int size,
      final String authority, final String type) = _$LoadWikiListImpl<T>;

  @override
  int get page;
  @override
  int get size;
  @override
  String get authority;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$LoadWikiListImplCopyWith<T, _$LoadWikiListImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
