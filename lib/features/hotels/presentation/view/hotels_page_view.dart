import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotels/core/presentation/widgets/widgets.dart';
import 'package:hotels/features/hotels/presentation/cubit/hotels_cubit.dart';
import 'package:hotels/features/hotels/presentation/cubit/hotels_state.dart';
import 'package:hotels/features/hotels/presentation/widgets/hotels_list.dart';
import 'package:hotels/l10n/l10n.dart';

class HotelsPageView extends StatelessWidget {
  const HotelsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    
    return Scaffold(
      appBar: CustomAppBar(
        title: l10n.hotels,
      ),
      body: BlocBuilder<HotelsCubit, HotelsState>(
        builder: (context, state) {
          return state.when(
            initial: () => LoadingStateWidget(
              message: l10n.loadingHotels,
            ),
            loading: () => const LoadingStateWidget(),
            error: (message) => ErrorStateWidget(
              message: message,
              onRetry: () {
                unawaited(
                  context.read<HotelsCubit>().fetchHotels(),
                );
              },
            ),
            success: (hotels, hotelCount) => HotelsList(
              hotels: hotels,
              hotelCount: hotelCount,
            ),
          );
        },
      ),
    );
  }
}
