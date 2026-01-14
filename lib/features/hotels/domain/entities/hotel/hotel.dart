import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotels/features/hotels/domain/entities/analytics/analytics.dart';
import 'package:hotels/features/hotels/domain/entities/best_offer/best_offer.dart';
import 'package:hotels/features/hotels/domain/entities/images/image.dart';
import 'package:hotels/features/hotels/domain/entities/rating/rating_info.dart';

part 'hotel.freezed.dart';

@freezed
class Hotel with _$Hotel {
  const factory Hotel({
    required String hotelId,
    required String name,
    required String destination,
    required double latitude,
    required double longitude,
    required RatingInfo ratingInfo,
    required IList<Image> images,
    required int category,
    required String categoryType,
    required BestOffer bestOffer,
    required Analytics analytics,

    // TODO: update when types are known
    required IList<dynamic> badges,
  }) = _Hotel;
}
