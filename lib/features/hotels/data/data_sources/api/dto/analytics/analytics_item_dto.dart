import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotels/features/hotels/domain/entities/analytics/analytics_item.dart';

part 'analytics_item_dto.freezed.dart';
part 'analytics_item_dto.g.dart';

@freezed
class AnalyticsItemDto with _$AnalyticsItemDto {
  const factory AnalyticsItemDto({
    required String currency,
    @JsonKey(name: 'itemCategory') required String itemCategory,
    @JsonKey(name: 'itemCategory2') required String itemCategory2,
    @JsonKey(name: 'itemId') required String itemId,
    @JsonKey(name: 'itemListName') required String itemListName,
    @JsonKey(name: 'itemName') required String itemName,
    @JsonKey(name: 'itemRooms') required String itemRooms,
    required String price,
    required String quantity,
  }) = _AnalyticsItemDto;

  factory AnalyticsItemDto.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsItemDtoFromJson(json);
}

extension AnalyticsItemDtoExtension on AnalyticsItemDto {
  AnalyticsItem toEntity() => AnalyticsItem(
    currency: currency,
    itemCategory: itemCategory,
    itemCategory2: itemCategory2,
    itemId: itemId,
    itemListName: itemListName,
    itemName: itemName,
    itemRooms: itemRooms,
    price: price,
    quantity: quantity,
  );
}
