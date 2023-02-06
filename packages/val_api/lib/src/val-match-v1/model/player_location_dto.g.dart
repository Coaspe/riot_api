// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_location_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerLocationDTO _$PlayerLocationDTOFromJson(Map<String, dynamic> json) =>
    PlayerLocationDTO(
      subject: json['subject'] as String,
      viewRadians: (json['viewRadians'] as num).toDouble(),
      location: LocationDTO.fromJson(json['location'] as Map<String, dynamic>),
    );
