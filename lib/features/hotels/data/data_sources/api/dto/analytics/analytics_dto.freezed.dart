// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytics_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AnalyticsDto {
  Map<String, AnalyticsItemDto> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnalyticsDtoCopyWith<AnalyticsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsDtoCopyWith<$Res> {
  factory $AnalyticsDtoCopyWith(
          AnalyticsDto value, $Res Function(AnalyticsDto) then) =
      _$AnalyticsDtoCopyWithImpl<$Res, AnalyticsDto>;
  @useResult
  $Res call({Map<String, AnalyticsItemDto> items});
}

/// @nodoc
class _$AnalyticsDtoCopyWithImpl<$Res, $Val extends AnalyticsDto>
    implements $AnalyticsDtoCopyWith<$Res> {
  _$AnalyticsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Map<String, AnalyticsItemDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnalyticsDtoImplCopyWith<$Res>
    implements $AnalyticsDtoCopyWith<$Res> {
  factory _$$AnalyticsDtoImplCopyWith(
          _$AnalyticsDtoImpl value, $Res Function(_$AnalyticsDtoImpl) then) =
      __$$AnalyticsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, AnalyticsItemDto> items});
}

/// @nodoc
class __$$AnalyticsDtoImplCopyWithImpl<$Res>
    extends _$AnalyticsDtoCopyWithImpl<$Res, _$AnalyticsDtoImpl>
    implements _$$AnalyticsDtoImplCopyWith<$Res> {
  __$$AnalyticsDtoImplCopyWithImpl(
      _$AnalyticsDtoImpl _value, $Res Function(_$AnalyticsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$AnalyticsDtoImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as Map<String, AnalyticsItemDto>,
    ));
  }
}

/// @nodoc

class _$AnalyticsDtoImpl implements _AnalyticsDto {
  const _$AnalyticsDtoImpl({required final Map<String, AnalyticsItemDto> items})
      : _items = items;

  final Map<String, AnalyticsItemDto> _items;
  @override
  Map<String, AnalyticsItemDto> get items {
    if (_items is EqualUnmodifiableMapView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_items);
  }

  @override
  String toString() {
    return 'AnalyticsDto(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyticsDtoImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalyticsDtoImplCopyWith<_$AnalyticsDtoImpl> get copyWith =>
      __$$AnalyticsDtoImplCopyWithImpl<_$AnalyticsDtoImpl>(this, _$identity);
}

abstract class _AnalyticsDto implements AnalyticsDto {
  const factory _AnalyticsDto(
          {required final Map<String, AnalyticsItemDto> items}) =
      _$AnalyticsDtoImpl;

  @override
  Map<String, AnalyticsItemDto> get items;
  @override
  @JsonKey(ignore: true)
  _$$AnalyticsDtoImplCopyWith<_$AnalyticsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
