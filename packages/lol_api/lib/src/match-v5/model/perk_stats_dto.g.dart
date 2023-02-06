// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'perk_stats_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PerkStatsDTO _$PerkStatsDTOFromJson(Map<String, dynamic> json) => PerkStatsDTO(
      defense: json['defense'] as int,
      flex: json['flex'] as int,
      offense: json['offense'] as int,
    );

Map<String, dynamic> _$PerkStatsDTOToJson(PerkStatsDTO instance) =>
    <String, dynamic>{
      'defense': instance.defense,
      'flex': instance.flex,
      'offense': instance.offense,
    };
