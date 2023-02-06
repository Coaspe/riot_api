// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InfoDTO _$InfoDTOFromJson(Map<String, dynamic> json) => InfoDTO(
      gameDatatime: json['game_datetime'] as int,
      gameLength: (json['game_length'] as num).toDouble(),
      gameVariation: json['game_variation'] as String?,
      gameVersion: json['game_version'] as String,
      participants: (json['participants'] as List<dynamic>)
          .map((e) => ParticipantDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      queueId: json['queue_id'] as int,
      tftSetNumber: json['tft_set_number'] as int,
    );
