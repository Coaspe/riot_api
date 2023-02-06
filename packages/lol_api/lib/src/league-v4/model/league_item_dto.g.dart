// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeagueItemDTO _$LeagueItemDTOFromJson(Map<String, dynamic> json) =>
    LeagueItemDTO(
      freshBlood: json['freshBlood'] as bool,
      wins: json['wins'] as int,
      summonerName: json['summonerName'] as String,
      miniSeries: json['miniSeries'] == null
          ? null
          : MiniSeriesDTO.fromJson(json['miniSeries'] as Map<String, dynamic>),
      inactive: json['inactive'] as bool,
      veteran: json['veteran'] as bool,
      hotStreak: json['hotStreak'] as bool,
      rank: json['rank'] as String,
      leaguePoints: json['leaguePoints'] as int,
      losses: json['losses'] as int,
      summonerId: json['summonerId'] as String,
    );

Map<String, dynamic> _$LeagueItemDTOToJson(LeagueItemDTO instance) =>
    <String, dynamic>{
      'freshBlood': instance.freshBlood,
      'wins': instance.wins,
      'summonerName': instance.summonerName,
      'miniSeries': instance.miniSeries,
      'inactive': instance.inactive,
      'veteran': instance.veteran,
      'hotStreak': instance.hotStreak,
      'rank': instance.rank,
      'leaguePoints': instance.leaguePoints,
      'losses': instance.losses,
      'summonerId': instance.summonerId,
    };
