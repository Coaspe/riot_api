// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranked_player_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RankedPlayerDTO _$RankedPlayerDTOFromJson(Map<String, dynamic> json) =>
    RankedPlayerDTO(
      puuid: json['puuid'] as String?,
      gameName: json['gameName'] as String?,
      tagLine: json['tagLine'] as String?,
      leaderboardRank: json['leaderboardRank'] as int,
      rankedRating: json['rankedRating'] as int,
      numberOfWins: json['numberOfWins'] as int,
    );
