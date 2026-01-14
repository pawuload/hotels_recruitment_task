import 'package:flutter/material.dart';
import 'package:hotels/core/data/local/app_preferences.dart';
import 'package:hotels/core/presentation/extension/context_extension.dart';
import 'package:hotels/core/presentation/theme/spacing.dart';
import 'package:hotels/core/presentation/widgets/widgets.dart';
import 'package:hotels/features/hotels/domain/entities/hotel/hotel.dart';
import 'package:hotels/features/hotels/presentation/widgets/widgets.dart';
import 'package:hotels/l10n/l10n.dart';

class HotelDetailsPage extends StatelessWidget {
  const HotelDetailsPage({
    required this.hotel,
    this.heroContext = 'list',
    super.key,
  });

  final Hotel hotel;
  final String heroContext;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: CustomAppBar(
        title: l10n.hotelDetails,
      ),
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          // Hero image with rating badge
          SliverToBoxAdapter(
            child: _buildHeroImage(context),
          ),
          // Main information: stars, name, location
          SliverToBoxAdapter(
            child: _buildMainInformation(context),
          ),
          // Image carousel
          if (hotel.images.length > 1)
            SliverToBoxAdapter(
              child: _buildImageCarousel(context),
            ),
          // Travel details and rest of the data
          SliverToBoxAdapter(
            child: _buildTravelDetails(context),
          ),
        ],
      ),
    );
  }

  Widget _buildHeroImage(BuildContext context) {
    final colors = context.appColors;
    final appPreferences = AppPreferences();

    return Stack(
      children: [
        // Hero is stable and doesn't rebuild on favorite or locale changes
        SizedBox(
          height: 300,
          width: double.infinity,
          child: Hero(
            key: ValueKey('hero_details_${hotel.hotelId}'),
            tag: 'hotel_image_${heroContext}_${hotel.hotelId}',
            child: HotelImage(
              image: hotel.images.isNotEmpty ? hotel.images.first : null,
              height: 300,
            ),
          ),
        ),
        // Favorite button - only this rebuilds when favorites change
        Positioned(
          top: Spacing.singleHalf,
          right: Spacing.singleHalf,
          child: ValueListenableBuilder<Set<String>>(
            valueListenable: appPreferences.favoriteHotelsValueNotifier,
            builder: (context, favoriteIds, _) {
              final isFavorite = favoriteIds.contains(hotel.hotelId);
              return FavoriteIconButton(
                isFavorite: isFavorite,
                onTap: () async {
                  await appPreferences.toggleFavorite(hotel.hotelId);
                },
                colors: colors,
              );
            },
          ),
        ),
        // Rating badge overlay (same as in favorites page)
        if (hotel.ratingInfo.reviewsCount > 0)
          Positioned(
            bottom: Spacing.singleHalf,
            left: Spacing.singleHalf,
            right: Spacing.singleHalf,
            child: HotelRatingBadge(ratingInfo: hotel.ratingInfo),
          ),
      ],
    );
  }

  Widget _buildMainInformation(BuildContext context) {
    final textTheme = context.appTextTheme;

    return Padding(
      padding: const EdgeInsets.all(Spacing.double),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HotelRatingSection(category: hotel.category),
          const SizedBox(height: Spacing.single),
          Text(
            hotel.name,
            style: textTheme.labelMedium,
          ),
          const SizedBox(height: Spacing.half),
          Text(
            hotel.destination,
            style: textTheme.labelSmall,
          ),
        ],
      ),
    );
  }

  Widget _buildImageCarousel(BuildContext context) {
    final textTheme = context.appTextTheme;
    final l10n = context.l10n;

    return SizedBox(
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(Spacing.double),
            child: Text(
              l10n.moreImages,
              style: textTheme.labelMedium,
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: Spacing.double),
              itemCount: hotel.images.length,
              itemBuilder: (context, index) {
                final image = hotel.images[index];
                return Container(
                  width: 280,
                  margin: const EdgeInsets.only(right: Spacing.singleHalf),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[300],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: HotelImage(
                      image: image,
                      width: 280,
                      height: 200,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTravelDetails(BuildContext context) {
    final textTheme = context.appTextTheme;
    final l10n = context.l10n;
    final bestOffer = hotel.bestOffer;
    final travelDate = bestOffer.travelDate;
    final rooms = bestOffer.rooms.overall;
    final totalPrice = bestOffer.total / 100;
    final pricePerPerson = bestOffer.simplePricePerPerson / 100;

    return Padding(
      padding: const EdgeInsets.fromLTRB(
        Spacing.double,
        Spacing.double,
        Spacing.double,
        100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.travelDetails,
            style: textTheme.labelMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: Spacing.singleHalf),
          Text(
            '${l10n.days(travelDate.days)}, ${l10n.nights(travelDate.nights)}',
            style: textTheme.labelSmall,
          ),
          const SizedBox(height: Spacing.half),
          Text(
            '${travelDate.departureDate.day}.${travelDate.departureDate.month}.${travelDate.departureDate.year} - ${travelDate.returnDate.day}.${travelDate.returnDate.month}.${travelDate.returnDate.year}',
            style: textTheme.labelSmall,
          ),
          const SizedBox(height: Spacing.singleHalf),
          Text(
            '${l10n.roomLabel}${rooms.name}',
            style: textTheme.labelSmall,
          ),
          const SizedBox(height: Spacing.half),
          Text(
            '${l10n.boardingLabel}${rooms.boarding}',
            style: textTheme.labelSmall,
          ),
          const SizedBox(height: Spacing.half),
          Text(
            '${l10n.adults(rooms.adultCount)}${rooms.childrenCount > 0 ? ', ${l10n.children(rooms.childrenCount)}' : ''}',
            style: textTheme.labelSmall,
          ),
          if (bestOffer.flightIncluded) ...[
            const SizedBox(height: Spacing.half),
            Text(
              l10n.flightIncluded,
              style: textTheme.labelSmall,
            ),
          ],
          const SizedBox(height: Spacing.triple),
          // Price
          Text(
            '${l10n.totalPrice}: ${totalPrice.toStringAsFixed(2).replaceAll('.', ',')} €',
            style: textTheme.labelXLarge,
          ),
          const SizedBox(height: Spacing.half),
          Text(
            '${l10n.perPerson}: ${pricePerPerson.toStringAsFixed(2).replaceAll('.', ',')} €',
            style: textTheme.labelSmall,
          ),
        ],
      ),
    );
  }
}
