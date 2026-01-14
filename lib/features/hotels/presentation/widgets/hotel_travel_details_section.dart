import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:hotels/core/presentation/extension/context_extension.dart';
import 'package:hotels/core/presentation/extension/num_extension.dart';
import 'package:hotels/core/presentation/theme/app_text_theme.dart';
import 'package:hotels/core/presentation/theme/spacing.dart';
import 'package:hotels/features/hotels/domain/entities/best_offer/best_offer.dart';
import 'package:hotels/l10n/l10n.dart';

class HotelTravelDetailsSection extends StatelessWidget {
  const HotelTravelDetailsSection({
    required this.bestOffer,
    super.key,
  });

  final BestOffer bestOffer;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.appTextTheme;
    final travelDate = bestOffer.travelDate;
    final rooms = bestOffer.rooms.overall;
    final totalPrice = bestOffer.total / 100;
    final pricePerPerson = bestOffer.simplePricePerPerson / 100;

    final childrenAgesString = _buildChildrenAgesString(context, rooms.childrenAges);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            spacing: Spacing.half,
            children: [
              _buildDaysAndNightsRow(
                context,
                textTheme,
                travelDate.days,
                travelDate.nights,
              ),
              _buildRoomAndBoardingRow(
                textTheme,
                rooms.name,
                rooms.boarding,
              ),
              _buildOccupancyRow(
                context,
                textTheme,
                rooms.adultCount,
                rooms.childrenCount,
                bestOffer.flightIncluded,
                childrenAgesString,
              ),
            ],
          ),
        ),
        const SizedBox(width: Spacing.double),
        _buildPriceColumn(context, textTheme, totalPrice, pricePerPerson),
      ],
    );
  }

  String _buildChildrenAgesString(
    BuildContext context,
    IList<dynamic> childrenAges,
  ) {
    if (childrenAges.isEmpty) return '';
    final l10n = context.l10n;
    final ages = childrenAges
        .map((age) => age is int ? age.toString() : age.toString())
        .join(', ');
    // Use plural form for "years" - assuming multiple ages
    final yearCount = childrenAges.length;
    return ' ($ages ${l10n.years(yearCount)})';
  }

  Widget _buildDaysAndNightsRow(
    BuildContext context,
    AppTextTheme textTheme,
    int days,
    int nights,
  ) {
    final l10n = context.l10n;
    return Wrap(
      runSpacing: Spacing.half,
      children: [
        Text(l10n.days(days), style: textTheme.labelXSmall),
        Text(' | ', style: textTheme.labelXSmall),
        Text(l10n.nights(nights), style: textTheme.labelXSmall),
      ],
    );
  }

  Widget _buildRoomAndBoardingRow(
    AppTextTheme textTheme,
    String roomName,
    String boarding,
  ) {
    return Wrap(
      runSpacing: Spacing.half,
      children: [
        Text(roomName, style: textTheme.labelXSmall),
        Text(' | ', style: textTheme.labelXSmall),
        Text(boarding, style: textTheme.labelXSmall),
      ],
    );
  }

  Widget _buildOccupancyRow(
    BuildContext context,
    AppTextTheme textTheme,
    int adultCount,
    int childrenCount,
    bool flightIncluded,
    String childrenAgesString,
  ) {
    final l10n = context.l10n;
    return Wrap(
      runSpacing: Spacing.half,
      children: [
        Text(
          '$adultCount ${l10n.adultsAbbr}, $childrenCount ${l10n.childrenAbbr}',
          style: textTheme.labelXSmall,
        ),
        if (flightIncluded) ...[
          Text(' | ', style: textTheme.labelXSmall),
          Text(l10n.flightIncludedShort, style: textTheme.labelXSmall),
        ],
        if (childrenCount > 0 && childrenAgesString.isNotEmpty) ...[
          Text(' | ', style: textTheme.labelXSmall),
          Text(
            '$adultCount ${l10n.adultsAbbr}, $childrenCount ${l10n.childrenAbbr}$childrenAgesString',
            style: textTheme.labelXSmall,
          ),
        ],
      ],
    );
  }

  Widget _buildPriceColumn(
    BuildContext context,
    AppTextTheme textTheme,
    double totalPrice,
    double pricePerPerson,
  ) {
    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(l10n.from, style: textTheme.labelXSmall),
            Text(
              totalPrice.toPriceString(),
              style: textTheme.labelXLarge,
            ),
          ],
        ),
        const SizedBox(height: Spacing.half),
        Text(
          '${pricePerPerson.toPriceString()} ${l10n.perPersonAbbr}',
          style: textTheme.labelXSmall,
        ),
      ],
    );
  }
}
