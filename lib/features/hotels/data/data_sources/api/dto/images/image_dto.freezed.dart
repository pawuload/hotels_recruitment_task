// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageDto _$ImageDtoFromJson(Map<String, dynamic> json) {
  return _ImageDto.fromJson(json);
}

/// @nodoc
mixin _$ImageDto {
  String? get large => throw _privateConstructorUsedError;
  String? get small => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageDtoCopyWith<ImageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDtoCopyWith<$Res> {
  factory $ImageDtoCopyWith(ImageDto value, $Res Function(ImageDto) then) =
      _$ImageDtoCopyWithImpl<$Res, ImageDto>;
  @useResult
  $Res call({String? large, String? small});
}

/// @nodoc
class _$ImageDtoCopyWithImpl<$Res, $Val extends ImageDto>
    implements $ImageDtoCopyWith<$Res> {
  _$ImageDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$ImageDtoImplCopyWith<$Res>
    implements $ImageDtoCopyWith<$Res> {
  factory _$$ImageDtoImplCopyWith(
          _$ImageDtoImpl value, $Res Function(_$ImageDtoImpl) then) =
      __$$ImageDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? large, String? small});
}

/// @nodoc
class __$$ImageDtoImplCopyWithImpl<$Res>
    extends _$ImageDtoCopyWithImpl<$Res, _$ImageDtoImpl>
    implements _$$ImageDtoImplCopyWith<$Res> {
  __$$ImageDtoImplCopyWithImpl(
      _$ImageDtoImpl _value, $Res Function(_$ImageDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? large = freezed,
    Object? small = freezed,
  }) {
    return _then(_$ImageDtoImpl(
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
@JsonSerializable()
class _$ImageDtoImpl implements _ImageDto {
  const _$ImageDtoImpl({required this.large, required this.small});

  factory _$ImageDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageDtoImplFromJson(json);

  @override
  final String? large;
  @override
  final String? small;

  @override
  String toString() {
    return 'ImageDto(large: $large, small: $small)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageDtoImpl &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.small, small) || other.small == small));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, large, small);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageDtoImplCopyWith<_$ImageDtoImpl> get copyWith =>
      __$$ImageDtoImplCopyWithImpl<_$ImageDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageDtoImplToJson(
      this,
    );
  }
}

abstract class _ImageDto implements ImageDto {
  const factory _ImageDto(
      {required final String? large,
      required final String? small}) = _$ImageDtoImpl;

  factory _ImageDto.fromJson(Map<String, dynamic> json) =
      _$ImageDtoImpl.fromJson;

  @override
  String? get large;
  @override
  String? get small;
  @override
  @JsonKey(ignore: true)
  _$$ImageDtoImplCopyWith<_$ImageDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
