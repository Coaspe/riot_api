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
