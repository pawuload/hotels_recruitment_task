import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotels/core/data/local/app_preferences.dart';
import 'package:hotels/core/presentation/widgets/widgets.dart';
import 'package:hotels/features/favorites/presentation/widget/favourites_list.dart';
import 'package:hotels/features/hotels/presentation/cubit/hotels_cubit.dart';
import 'package:hotels/features/hotels/presentation/cubit/hotels_state.dart';
import 'package:hotels/l10n/l10n.dart';

class FavoritesPageView extends StatelessWidget {
  const FavoritesPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final appPreferences = AppPreferences();
    final l10n = context.l10n;

    return Scaffold(
      appBar: CustomAppBar(
        title: l10n.favorites,
      ),
      body: ValueListenableBuilder<Set<String>>(
        valueListenable: appPreferences.favoriteHotelsValueNotifier,
        builder: (context, favoriteIds, _) {
          if (favoriteIds.isEmpty) {
            return EmptyStateWidget(
              message: l10n.noFavoritesYet,
            );
          }

          return BlocBuilder<HotelsCubit, HotelsState>(
            builder: (context, state) {
              return state.when(
                initial: () => LoadingStateWidget(
                  message: l10n.loadingFavorites,
                ),
                loading: () => const LoadingStateWidget(),
                error: (message) => ErrorStateWidget(
                  message: message,
                  onRetry: () async {
                    await context.read<HotelsCubit>().fetchHotels();
                  },
                ),
                success: (hotels, _) {
                  final favoriteHotels = hotels
                      .where((hotel) => favoriteIds.contains(hotel.hotelId))
                      .toIList();

                  if (favoriteHotels.isEmpty) {
                    return EmptyStateWidget(
                      message: l10n.noFavoritesFound,
                    );
                  }

                  return FavoritesList(hotels: favoriteHotels);
                },
              );
            },
          );
        },
      ),
    );
  }
}
