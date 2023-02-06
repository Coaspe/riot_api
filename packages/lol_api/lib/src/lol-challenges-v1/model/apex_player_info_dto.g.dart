// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apex_player_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApexPlayerInfoDTO _$ApexPlayerInfoDTOFromJson(Map<String, dynamic> json) =>
    ApexPlayerInfoDTO(
      puuid: json['puuid'] as String,
      value: (json['value'] as num).toDouble(),
      position: json['position'] as int,
    );

Map<String, dynamic> _$ApexPlayerInfoDTOToJson(ApexPlayerInfoDTO instance) =>
    <String, dynamic>{
      'puuid': instance.puuid,
      'value': instance.value,
      'position': instance.position,
    };
