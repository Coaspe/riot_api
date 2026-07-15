// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InfoDTO _$InfoDTOFromJson(Map<String, dynamic> json) => InfoDTO(
  endOfGameResult: json['endOfGameResult'] as String?,
  gameCreation: (json['gameCreation'] as num?)?.toInt(),
  gameId: (json['gameId'] as num?)?.toInt(),
  gameDatatime: (json['game_datetime'] as num).toInt(),
  gameLength: (json['game_length'] as num).toDouble(),
  gameVariation: json['game_variation'] as String?,
  gameVersion: json['game_version'] as String,
  mapId: (json['mapId'] as num?)?.toInt(),
  participants: (json['participants'] as List<dynamic>)
      .map((e) => ParticipantDTO.fromJson(e as Map<String, dynamic>))
      .toList(),
  queueId: (InfoDTO._readQueueId(json, 'queueId') as num).toInt(),
  tftGameType: json['tft_game_type'] as String?,
  tftSetCoreName: json['tft_set_core_name'] as String?,
  tftSetNumber: (json['tft_set_number'] as num).toInt(),
);
