// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerDTO _$PlayerDTOFromJson(Map<String, dynamic> json) => PlayerDTO(
      summonerId: json['summonerId'] as String,
      teamId: json['teamId'] as String,
      position: json['position'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$PlayerDTOToJson(PlayerDTO instance) => <String, dynamic>{
      'summonerId': instance.summonerId,
      'teamId': instance.teamId,
      'position': instance.position,
      'role': instance.role,
    };
