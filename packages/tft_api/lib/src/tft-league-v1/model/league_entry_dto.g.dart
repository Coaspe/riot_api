// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_entry_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeagueEntryDTO _$LeagueEntryDTOFromJson(Map<String, dynamic> json) =>
    LeagueEntryDTO(
      leagueId: json['leagueId'] as String?,
      summonerId: json['summonerId'] as String,
      summonerName: json['summonerName'] as String,
      queueType: json['queueType'] as String,
      ratedTier: $enumDecodeNullable(_$RatedTierEnumMap, json['ratedTier']),
      ratedRating: json['ratedRating'] as int?,
      tier: json['tier'] as String?,
      rank: json['rank'] as String?,
      leaguePoints: json['leaguePoints'] as int?,
      wins: json['wins'] as int,
      losses: json['losses'] as int,
      hotStreak: json['hotStreak'] as bool?,
      veteran: json['veteran'] as bool?,
      freshBlood: json['freshBlood'] as bool?,
      inactive: json['inactive'] as bool?,
      miniSeries: json['miniSeries'] == null
          ? null
          : MiniSeriesDTO.fromJson(json['miniSeries'] as Map<String, dynamic>),
    );

const _$RatedTierEnumMap = {
  RatedTier.oreange: 'ORANGE',
  RatedTier.purple: 'PURPLE',
  RatedTier.blue: 'BLUE',
  RatedTier.green: 'GREEN',
  RatedTier.gray: 'GRAY',
};
