// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_group_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoomGroupDto _$RoomGroupDtoFromJson(Map<String, dynamic> json) {
  return _RoomGroupDto.fromJson(json);
}

/// @nodoc
mixin _$RoomGroupDto {
// TODO: update when types are known
  List<dynamic> get attributes => throw _privateConstructorUsedError;
  String get boarding => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get detailedDescription => throw _privateConstructorUsedError;
  String get groupIdentifier => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomGroupDtoCopyWith<RoomGroupDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomGroupDtoCopyWith<$Res> {
  factory $RoomGroupDtoCopyWith(
          RoomGroupDto value, $Res Function(RoomGroupDto) then) =
      _$RoomGroupDtoCopyWithImpl<$Res, RoomGroupDto>;
  @useResult
  $Res call(
      {List<dynamic> attributes,
      String boarding,
      String name,
      String? detailedDescription,
      String groupIdentifier,
      int quantity});
}

/// @nodoc
class _$RoomGroupDtoCopyWithImpl<$Res, $Val extends RoomGroupDto>
    implements $RoomGroupDtoCopyWith<$Res> {
  _$RoomGroupDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributes = null,
    Object? boarding = null,
    Object? name = null,
    Object? detailedDescription = freezed,
    Object? groupIdentifier = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      boarding: null == boarding
          ? _value.boarding
          : boarding // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      detailedDescription: freezed == detailedDescription
          ? _value.detailedDescription
          : detailedDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      groupIdentifier: null == groupIdentifier
          ? _value.groupIdentifier
          : groupIdentifier // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomGroupDtoImplCopyWith<$Res>
    implements $RoomGroupDtoCopyWith<$Res> {
  factory _$$RoomGroupDtoImplCopyWith(
          _$RoomGroupDtoImpl value, $Res Function(_$RoomGroupDtoImpl) then) =
      __$$RoomGroupDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<dynamic> attributes,
      String boarding,
      String name,
      String? detailedDescription,
      String groupIdentifier,
      int quantity});
}

/// @nodoc
class __$$RoomGroupDtoImplCopyWithImpl<$Res>
    extends _$RoomGroupDtoCopyWithImpl<$Res, _$RoomGroupDtoImpl>
    implements _$$RoomGroupDtoImplCopyWith<$Res> {
  __$$RoomGroupDtoImplCopyWithImpl(
      _$RoomGroupDtoImpl _value, $Res Function(_$RoomGroupDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributes = null,
    Object? boarding = null,
    Object? name = null,
    Object? detailedDescription = freezed,
    Object? groupIdentifier = null,
    Object? quantity = null,
  }) {
    return _then(_$RoomGroupDtoImpl(
      attributes: null == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      boarding: null == boarding
          ? _value.boarding
          : boarding // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      detailedDescription: freezed == detailedDescription
          ? _value.detailedDescription
          : detailedDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      groupIdentifier: null == groupIdentifier
          ? _value.groupIdentifier
          : groupIdentifier // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomGroupDtoImpl implements _RoomGroupDto {
  const _$RoomGroupDtoImpl(
      {required final List<dynamic> attributes,
      required this.boarding,
      required this.name,
      required this.detailedDescription,
      required this.groupIdentifier,
      required this.quantity})
      : _attributes = attributes;

  factory _$RoomGroupDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomGroupDtoImplFromJson(json);

// TODO: update when types are known
  final List<dynamic> _attributes;
// TODO: update when types are known
  @override
  List<dynamic> get attributes {
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attributes);
  }

  @override
  final String boarding;
  @override
  final String name;
  @override
  final String? detailedDescription;
  @override
  final String groupIdentifier;
  @override
  final int quantity;

  @override
  String toString() {
    return 'RoomGroupDto(attributes: $attributes, boarding: $boarding, name: $name, detailedDescription: $detailedDescription, groupIdentifier: $groupIdentifier, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomGroupDtoImpl &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            (identical(other.boarding, boarding) ||
                other.boarding == boarding) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.detailedDescription, detailedDescription) ||
                other.detailedDescription == detailedDescription) &&
            (identical(other.groupIdentifier, groupIdentifier) ||
                other.groupIdentifier == groupIdentifier) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_attributes),
      boarding,
      name,
      detailedDescription,
      groupIdentifier,
      quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomGroupDtoImplCopyWith<_$RoomGroupDtoImpl> get copyWith =>
      __$$RoomGroupDtoImplCopyWithImpl<_$RoomGroupDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomGroupDtoImplToJson(
      this,
    );
  }
}

abstract class _RoomGroupDto implements RoomGroupDto {
  const factory _RoomGroupDto(
      {required final List<dynamic> attributes,
      required final String boarding,
      required final String name,
      required final String? detailedDescription,
      required final String groupIdentifier,
      required final int quantity}) = _$RoomGroupDtoImpl;

  factory _RoomGroupDto.fromJson(Map<String, dynamic> json) =
      _$RoomGroupDtoImpl.fromJson;

  @override // TODO: update when types are known
  List<dynamic> get attributes;
  @override
  String get boarding;
  @override
  String get name;
  @override
  String? get detailedDescription;
  @override
  String get groupIdentifier;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$RoomGroupDtoImplCopyWith<_$RoomGroupDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
