import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotels/features/hotels/data/data_sources/api/dto/analytics/analytics_item_dto.dart';
import 'package:hotels/features/hotels/domain/entities/analytics/analytics.dart';

part 'analytics_dto.freezed.dart';

class AnalyticsDtoConverter
    implements JsonConverter<AnalyticsDto, Map<String, dynamic>> {
  const AnalyticsDtoConverter();

  @override
  AnalyticsDto fromJson(Map<String, dynamic> json) {
    return AnalyticsDto.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(AnalyticsDto object) {
    return object.toJson();
  }
}

@freezed
class AnalyticsDto with _$AnalyticsDto {
  const factory AnalyticsDto({
    required Map<String, AnalyticsItemDto> items,
  }) = _AnalyticsDto;

  factory AnalyticsDto.fromJson(Map<String, dynamic> json) {
    return AnalyticsDto(
      items: json.map(
        (k, e) => MapEntry(
          k,
          AnalyticsItemDto.fromJson(e as Map<String, dynamic>),
        ),
      ),
    );
  }
}

extension AnalyticsDtoExtension on AnalyticsDto {
  Map<String, dynamic> toJson() {
    return items.map(
      (k, v) => MapEntry(k, v.toJson()),
    );
  }

  Analytics toEntity() => Analytics(
    items: items.map(
      (k, v) => MapEntry(k, v.toEntity()),
    ),
  );
}
