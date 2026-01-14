import 'package:freezed_annotation/freezed_annotation.dart';

part 'analytics_item.freezed.dart';

@freezed
class AnalyticsItem with _$AnalyticsItem {
  const factory AnalyticsItem({
    required String currency,
    required String itemCategory,
    required String itemCategory2,
    required String itemId,
    required String itemListName,
    required String itemName,
    required String itemRooms,
    required String price,
    required String quantity,
  }) = _AnalyticsItem;
}
