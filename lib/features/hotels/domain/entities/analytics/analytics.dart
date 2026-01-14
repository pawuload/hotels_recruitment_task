import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotels/features/hotels/domain/entities/analytics/analytics_item.dart';

part 'analytics.freezed.dart';

@freezed
class Analytics with _$Analytics {
  const factory Analytics({
    required Map<String, AnalyticsItem> items,
  }) = _Analytics;
}
