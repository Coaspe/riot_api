// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_rated_ladder_entry_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopRatedLadderEntryDTO _$TopRatedLadderEntryDTOFromJson(
        Map<String, dynamic> json) =>
    TopRatedLadderEntryDTO(
      summonerId: json['summonerId'] as String,
      summonerName: json['summonerName'] as String,
      ratedTier: $enumDecode(_$RatedTierEnumMap, json['ratedTier']),
      ratedRating: json['ratedRating'] as int,
      wins: json['wins'] as int,
      previousUpdateLadderPosition: json['previousUpdateLadderPosition'] as int,
    );

const _$RatedTierEnumMap = {
  RatedTier.oreange: 'ORANGE',
  RatedTier.purple: 'PURPLE',
  RatedTier.blue: 'BLUE',
  RatedTier.green: 'GREEN',
  RatedTier.gray: 'GRAY',
};
