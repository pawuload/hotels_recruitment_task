// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelDtoImpl _$$HotelDtoImplFromJson(Map<String, dynamic> json) =>
    _$HotelDtoImpl(
      hotelId: json['hotel-id'] as String,
      name: json['name'] as String,
      destination: json['destination'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      ratingInfo:
          RatingInfoDto.fromJson(json['rating-info'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>)
          .map((e) => ImageDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      category: (json['category'] as num).toInt(),
      categoryType: json['category-type'] as String,
      bestOffer:
          BestOfferDto.fromJson(json['best-offer'] as Map<String, dynamic>),
      analytics: const AnalyticsDtoConverter()
          .fromJson(json['analytics'] as Map<String, dynamic>),
      badges: json['badges'] as List<dynamic>,
    );

Map<String, dynamic> _$$HotelDtoImplToJson(_$HotelDtoImpl instance) =>
    <String, dynamic>{
      'hotel-id': instance.hotelId,
      'name': instance.name,
      'destination': instance.destination,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'rating-info': instance.ratingInfo,
      'images': instance.images,
      'category': instance.category,
      'category-type': instance.categoryType,
      'best-offer': instance.bestOffer,
      'analytics': const AnalyticsDtoConverter().toJson(instance.analytics),
      'badges': instance.badges,
    };
