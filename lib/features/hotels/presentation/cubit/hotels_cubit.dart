import 'package:bloc/bloc.dart';
import 'package:hotels/features/hotels/domain/repositories/hotels_repository.dart';
import 'package:hotels/features/hotels/presentation/cubit/hotels_state.dart';

class HotelsCubit extends Cubit<HotelsState> {
  HotelsCubit({required HotelsRepository hotelsRepository})
      : _hotelsRepository = hotelsRepository,
        super(const HotelsState.initial());

  final HotelsRepository _hotelsRepository;

  Future<void> fetchHotels() async {
    emit(const HotelsState.loading());
    try {
      final result = await _hotelsRepository.getHotels();
      emit(HotelsState.success(
        hotels: result.hotels,
        hotelCount: result.hotelCount,
      ));
    } on Exception catch (e) {
      emit(HotelsState.error(e.toString()));
    }
  }
}
