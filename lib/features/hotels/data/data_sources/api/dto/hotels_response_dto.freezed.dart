// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotels_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HotelsResponseDto _$HotelsResponseDtoFromJson(Map<String, dynamic> json) {
  return _HotelsResponseDto.fromJson(json);
}

/// @nodoc
mixin _$HotelsResponseDto {
  int get hotelCount => throw _privateConstructorUsedError;
  List<HotelDto> get hotels => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelsResponseDtoCopyWith<HotelsResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelsResponseDtoCopyWith<$Res> {
  factory $HotelsResponseDtoCopyWith(
          HotelsResponseDto value, $Res Function(HotelsResponseDto) then) =
      _$HotelsResponseDtoCopyWithImpl<$Res, HotelsResponseDto>;
  @useResult
  $Res call({int hotelCount, List<HotelDto> hotels});
}

/// @nodoc
class _$HotelsResponseDtoCopyWithImpl<$Res, $Val extends HotelsResponseDto>
    implements $HotelsResponseDtoCopyWith<$Res> {
  _$HotelsResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotelCount = null,
    Object? hotels = null,
  }) {
    return _then(_value.copyWith(
      hotelCount: null == hotelCount
          ? _value.hotelCount
          : hotelCount // ignore: cast_nullable_to_non_nullable
              as int,
      hotels: null == hotels
          ? _value.hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as List<HotelDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HotelsResponseDtoImplCopyWith<$Res>
    implements $HotelsResponseDtoCopyWith<$Res> {
  factory _$$HotelsResponseDtoImplCopyWith(_$HotelsResponseDtoImpl value,
          $Res Function(_$HotelsResponseDtoImpl) then) =
      __$$HotelsResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int hotelCount, List<HotelDto> hotels});
}

/// @nodoc
class __$$HotelsResponseDtoImplCopyWithImpl<$Res>
    extends _$HotelsResponseDtoCopyWithImpl<$Res, _$HotelsResponseDtoImpl>
    implements _$$HotelsResponseDtoImplCopyWith<$Res> {
  __$$HotelsResponseDtoImplCopyWithImpl(_$HotelsResponseDtoImpl _value,
      $Res Function(_$HotelsResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotelCount = null,
    Object? hotels = null,
  }) {
    return _then(_$HotelsResponseDtoImpl(
      hotelCount: null == hotelCount
          ? _value.hotelCount
          : hotelCount // ignore: cast_nullable_to_non_nullable
              as int,
      hotels: null == hotels
          ? _value._hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as List<HotelDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotelsResponseDtoImpl implements _HotelsResponseDto {
  const _$HotelsResponseDtoImpl(
      {required this.hotelCount, required final List<HotelDto> hotels})
      : _hotels = hotels;

  factory _$HotelsResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelsResponseDtoImplFromJson(json);

  @override
  final int hotelCount;
  final List<HotelDto> _hotels;
  @override
  List<HotelDto> get hotels {
    if (_hotels is EqualUnmodifiableListView) return _hotels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hotels);
  }

  @override
  String toString() {
    return 'HotelsResponseDto(hotelCount: $hotelCount, hotels: $hotels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelsResponseDtoImpl &&
            (identical(other.hotelCount, hotelCount) ||
                other.hotelCount == hotelCount) &&
            const DeepCollectionEquality().equals(other._hotels, _hotels));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, hotelCount, const DeepCollectionEquality().hash(_hotels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelsResponseDtoImplCopyWith<_$HotelsResponseDtoImpl> get copyWith =>
      __$$HotelsResponseDtoImplCopyWithImpl<_$HotelsResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelsResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _HotelsResponseDto implements HotelsResponseDto {
  const factory _HotelsResponseDto(
      {required final int hotelCount,
      required final List<HotelDto> hotels}) = _$HotelsResponseDtoImpl;

  factory _HotelsResponseDto.fromJson(Map<String, dynamic> json) =
      _$HotelsResponseDtoImpl.fromJson;

  @override
  int get hotelCount;
  @override
  List<HotelDto> get hotels;
  @override
  @JsonKey(ignore: true)
  _$$HotelsResponseDtoImplCopyWith<_$HotelsResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
