// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_entry_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeagueEntryDTO _$LeagueEntryDTOFromJson(Map<String, dynamic> json) =>
    LeagueEntryDTO(
      leagueId: json['leagueId'] as String,
      summonerId: json['summonerId'] as String,
      summonerName: json['summonerName'] as String,
      queueType: $enumDecode(_$QueueTypeEnumMap, json['queueType']),
      tier: $enumDecode(_$TierEnumMap, json['tier']),
      rank: $enumDecode(_$DivisionEnumMap, json['rank']),
      leaguePoints: json['leaguePoints'] as int,
      wins: json['wins'] as int,
      losses: json['losses'] as int,
      hotStreak: json['hotStreak'] as bool,
      veteran: json['veteran'] as bool,
      freshBlood: json['freshBlood'] as bool,
      inactive: json['inactive'] as bool,
      miniSeries: json['miniSeries'] == null
          ? null
          : MiniSeriesDTO.fromJson(json['miniSeries'] as Map<String, dynamic>),
    );

const _$QueueTypeEnumMap = {
  QueueType.rankedSolo_5x5: 'RANKED_SOLO_5x5',
  QueueType.rankedTFT: 'RANKED_TFT',
  QueueType.rankedFlexSR: 'RANKED_FLEX_SR',
  QueueType.rankedFlexTT: 'RANKED_FLEX_TT',
};

const _$TierEnumMap = {
  Tier.challenger: 'CHALLENGER',
  Tier.grandmaster: 'GRANDMASTER',
  Tier.master: 'MASTER',
  Tier.diamond: 'DIAMOND',
  Tier.platinum: 'PLATINUM',
  Tier.gold: 'GOLD',
  Tier.silver: 'SILVER',
  Tier.bronze: 'BRONZE',
  Tier.iron: 'IRON',
};

const _$DivisionEnumMap = {
  Division.one: 'I',
  Division.two: 'II',
  Division.three: 'III',
  Division.four: 'IV',
};
