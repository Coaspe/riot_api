// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participant_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParticipantDTO _$ParticipantDTOFromJson(Map<String, dynamic> json) =>
    ParticipantDTO(
      companion: CompanionDTO.fromJson(
        json['companion'] as Map<String, dynamic>,
      ),
      goldLeft: (json['gold_left'] as num).toInt(),
      lastRound: (json['last_round'] as num).toInt(),
      level: (json['level'] as num).toInt(),
      placement: (json['placement'] as num).toInt(),
      playersEliminated: (json['players_eliminated'] as num).toInt(),
      puuid: json['puuid'] as String,
      riotIdGameName: json['riotIdGameName'] as String?,
      riotIdTagline: json['riotIdTagline'] as String?,
      timeEliminated: (json['time_eliminated'] as num).toDouble(),
      totalDamageToPlayers: (json['total_damage_to_players'] as num).toInt(),
      traits: (json['traits'] as List<dynamic>)
          .map((e) => TraitDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      units: (json['units'] as List<dynamic>)
          .map((e) => UnitDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      win: json['win'] as bool?,
    );
