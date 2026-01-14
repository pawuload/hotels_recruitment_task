import 'package:flutter/material.dart';
import 'package:hotels/core/presentation/extension/context_extension.dart';
import 'package:hotels/core/presentation/theme/spacing.dart';
import 'package:hotels/core/presentation/widgets/widgets.dart';
import 'package:hotels/features/hotels/domain/entities/hotel/hotel.dart';
import 'package:hotels/features/hotels/presentation/widgets/hotel_rating_badge.dart';

class HotelImageSection extends StatelessWidget {
  const HotelImageSection({
    required this.hotel,
    required this.isFavorite,
    required this.onFavoriteToggle,
    this.showRatingBadge = false,
    this.heroContext = 'list',
    super.key,
  });

  final Hotel hotel;
  final bool isFavorite;
  final VoidCallback onFavoriteToggle;
  final bool showRatingBadge;
  final String heroContext;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return Stack(
      children: [
        Hero(
          key: ValueKey('hero_${heroContext}_${hotel.hotelId}'),
          tag: 'hotel_image_${heroContext}_${hotel.hotelId}',
          child: HotelImage(
            image: hotel.images.isNotEmpty ? hotel.images.first : null,
            width: double.infinity,
            height: 200,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(5)),
          ),
        ),
        Positioned(
          top: Spacing.singleHalf,
          right: Spacing.singleHalf,
          child: FavoriteIconButton(
            isFavorite: isFavorite,
            onTap: onFavoriteToggle,
            colors: colors,
          ),
        ),
        if (showRatingBadge)
          Positioned(
            bottom: Spacing.double,
            left: Spacing.single,
            right: Spacing.single,
            child: HotelRatingBadge(ratingInfo: hotel.ratingInfo),
          ),
      ],
    );
  }
}
