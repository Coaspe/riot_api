// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kill_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KillDTO _$KillDTOFromJson(Map<String, dynamic> json) => KillDTO(
      gameTime: json['gameTime'] as int,
      roundTime: json['roundTime'] as int,
      round: json['round'] as int,
      killer: json['killer'] as String,
      victim: json['victim'] as String,
      victimLocation:
          LocationDTO.fromJson(json['victimLocation'] as Map<String, dynamic>),
      assistants: (json['assistants'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      playerLocations: (json['playerLocations'] as List<dynamic>)
          .map((e) => PlayerLocationDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      finishingDamage: FinishingDamageDTO.fromJson(
          json['finishingDamage'] as Map<String, dynamic>),
    );
