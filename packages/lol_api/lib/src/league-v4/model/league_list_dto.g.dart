// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeagueListDTO _$LeagueListDTOFromJson(Map<String, dynamic> json) =>
    LeagueListDTO(
      leagueId: json['leagueId'] as String,
      entries: (json['entries'] as List<dynamic>)
          .map((e) => LeagueItemDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      tier: $enumDecode(_$TierEnumMap, json['tier']),
      name: json['name'] as String,
      queue: $enumDecode(_$QueueTypeEnumMap, json['queue']),
    );

Map<String, dynamic> _$LeagueListDTOToJson(LeagueListDTO instance) =>
    <String, dynamic>{
      'leagueId': instance.leagueId,
      'entries': instance.entries,
      'tier': _$TierEnumMap[instance.tier]!,
      'name': instance.name,
      'queue': _$QueueTypeEnumMap[instance.queue]!,
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

const _$QueueTypeEnumMap = {
  QueueType.rankedSolo_5x5: 'RANKED_SOLO_5x5',
  QueueType.rankedTFT: 'RANKED_TFT',
  QueueType.rankedFlexSR: 'RANKED_FLEX_SR',
  QueueType.rankedFlexTT: 'RANKED_FLEX_TT',
};
