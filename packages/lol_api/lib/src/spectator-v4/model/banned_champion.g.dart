// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banned_champion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannedChampion _$BannedChampionFromJson(Map<String, dynamic> json) =>
    BannedChampion(
      pickTurn: json['pickTurn'] as int,
      championId: json['championId'] as int,
      teamId: json['teamId'] as int,
    );

Map<String, dynamic> _$BannedChampionToJson(BannedChampion instance) =>
    <String, dynamic>{
      'pickTurn': instance.pickTurn,
      'championId': instance.championId,
      'teamId': instance.teamId,
    };
