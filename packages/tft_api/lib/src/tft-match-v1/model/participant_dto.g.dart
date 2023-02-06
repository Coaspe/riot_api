// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participant_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParticipantDTO _$ParticipantDTOFromJson(Map<String, dynamic> json) =>
    ParticipantDTO(
      companion:
          CompanionDTO.fromJson(json['companion'] as Map<String, dynamic>),
      goldLeft: json['gold_left'] as int,
      lastRound: json['last_round'] as int,
      level: json['level'] as int,
      placement: json['placement'] as int,
      playersEliminated: json['players_eliminated'] as int,
      puuid: json['puuid'] as String,
      timeEliminated: (json['time_eliminated'] as num).toDouble(),
      totalDamageToPlayers: json['total_damage_to_players'] as int,
      traits: (json['traits'] as List<dynamic>)
          .map((e) => TraitDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      units: (json['units'] as List<dynamic>)
          .map((e) => UnitDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
