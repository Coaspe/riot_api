// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_shard_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveShardDTO _$ActiveShardDTOFromJson(Map<String, dynamic> json) =>
    ActiveShardDTO(
      puuid: json['puuid'] as String,
      game: json['game'] as String,
      activeShard: json['activeShard'] as String,
    );

Map<String, dynamic> _$ActiveShardDTOToJson(ActiveShardDTO instance) =>
    <String, dynamic>{
      'puuid': instance.puuid,
      'game': instance.game,
      'activeShard': instance.activeShard,
    };
