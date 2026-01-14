// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Image {
  String? get large => throw _privateConstructorUsedError;
  String? get small => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res, Image>;
  @useResult
  $Res call({String? large, String? small});
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? large = freezed,
    Object? small = freezed,
  }) {
    return _then(_value.copyWith(
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageImplCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$ImageImplCopyWith(
          _$ImageImpl value, $Res Function(_$ImageImpl) then) =
      __$$ImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? large, String? small});
}

/// @nodoc
class __$$ImageImplCopyWithImpl<$Res>
    extends _$ImageCopyWithImpl<$Res, _$ImageImpl>
    implements _$$ImageImplCopyWith<$Res> {
  __$$ImageImplCopyWithImpl(
      _$ImageImpl _value, $Res Function(_$ImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? large = freezed,
    Object? small = freezed,
  }) {
    return _then(_$ImageImpl(
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ImageImpl implements _Image {
  const _$ImageImpl({required this.large, required this.small});

  @override
  final String? large;
  @override
  final String? small;

  @override
  String toString() {
    return 'Image(large: $large, small: $small)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageImpl &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.small, small) || other.small == small));
  }

  @override
  int get hashCode => Object.hash(runtimeType, large, small);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      __$$ImageImplCopyWithImpl<_$ImageImpl>(this, _$identity);
}

abstract class _Image implements Image {
  const factory _Image(
      {required final String? large,
      required final String? small}) = _$ImageImpl;

  @override
  String? get large;
  @override
  String? get small;
  @override
  @JsonKey(ignore: true)
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
