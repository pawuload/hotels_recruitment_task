import 'package:flutter/material.dart';
import 'package:hotels/core/data/local/app_preferences.dart';
import 'package:hotels/features/hotels/domain/entities/hotel/hotel.dart';
import 'package:hotels/features/hotels/presentation/widgets/hotel_card.dart';

class HotelListItem extends StatelessWidget {
  const HotelListItem({
    required this.hotel,
    this.showTravelDetails = false,
    this.heroContext = 'list',
    super.key,
  });

  final Hotel hotel;
  final bool showTravelDetails;
  final String heroContext;

  @override
  Widget build(BuildContext context) {
    final appPreferences = AppPreferences();

    return ValueListenableBuilder<Set<String>>(
      valueListenable: appPreferences.favoriteHotelsValueNotifier,
      builder: (context, favoriteIds, _) {
        final isFavorite = favoriteIds.contains(hotel.hotelId);
        return HotelCard(
          hotel: hotel,
          isFavorite: isFavorite,
          onFavoriteToggle: () async {
            await appPreferences.toggleFavorite(hotel.hotelId);
          },
          showTravelDetails: showTravelDetails,
          heroContext: heroContext,
        );
      },
    );
  }
}
