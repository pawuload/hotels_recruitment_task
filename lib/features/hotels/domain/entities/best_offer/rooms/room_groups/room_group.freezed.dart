// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RoomGroup {
// TODO: update when types are known
  IList<dynamic> get attributes => throw _privateConstructorUsedError;
  String get boarding => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get detailedDescription => throw _privateConstructorUsedError;
  String get groupIdentifier => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomGroupCopyWith<RoomGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomGroupCopyWith<$Res> {
  factory $RoomGroupCopyWith(RoomGroup value, $Res Function(RoomGroup) then) =
      _$RoomGroupCopyWithImpl<$Res, RoomGroup>;
  @useResult
  $Res call(
      {IList<dynamic> attributes,
      String boarding,
      String name,
      String? detailedDescription,
      String groupIdentifier,
      int quantity});
}

/// @nodoc
class _$RoomGroupCopyWithImpl<$Res, $Val extends RoomGroup>
    implements $RoomGroupCopyWith<$Res> {
  _$RoomGroupCopyWithImpl(this._value, this._then);

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
              as IList<dynamic>,
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
abstract class _$$RoomGroupImplCopyWith<$Res>
    implements $RoomGroupCopyWith<$Res> {
  factory _$$RoomGroupImplCopyWith(
          _$RoomGroupImpl value, $Res Function(_$RoomGroupImpl) then) =
      __$$RoomGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {IList<dynamic> attributes,
      String boarding,
      String name,
      String? detailedDescription,
      String groupIdentifier,
      int quantity});
}

/// @nodoc
class __$$RoomGroupImplCopyWithImpl<$Res>
    extends _$RoomGroupCopyWithImpl<$Res, _$RoomGroupImpl>
    implements _$$RoomGroupImplCopyWith<$Res> {
  __$$RoomGroupImplCopyWithImpl(
      _$RoomGroupImpl _value, $Res Function(_$RoomGroupImpl) _then)
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
    return _then(_$RoomGroupImpl(
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as IList<dynamic>,
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

class _$RoomGroupImpl implements _RoomGroup {
  const _$RoomGroupImpl(
      {required this.attributes,
      required this.boarding,
      required this.name,
      required this.detailedDescription,
      required this.groupIdentifier,
      required this.quantity});

// TODO: update when types are known
  @override
  final IList<dynamic> attributes;
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
    return 'RoomGroup(attributes: $attributes, boarding: $boarding, name: $name, detailedDescription: $detailedDescription, groupIdentifier: $groupIdentifier, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomGroupImpl &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes) &&
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

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(attributes),
      boarding,
      name,
      detailedDescription,
      groupIdentifier,
      quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomGroupImplCopyWith<_$RoomGroupImpl> get copyWith =>
      __$$RoomGroupImplCopyWithImpl<_$RoomGroupImpl>(this, _$identity);
}

abstract class _RoomGroup implements RoomGroup {
  const factory _RoomGroup(
      {required final IList<dynamic> attributes,
      required final String boarding,
      required final String name,
      required final String? detailedDescription,
      required final String groupIdentifier,
      required final int quantity}) = _$RoomGroupImpl;

  @override // TODO: update when types are known
  IList<dynamic> get attributes;
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
  _$$RoomGroupImplCopyWith<_$RoomGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
