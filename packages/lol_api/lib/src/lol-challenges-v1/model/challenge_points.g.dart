// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge_points.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChallengePoints _$ChallengePointsFromJson(Map<String, dynamic> json) =>
    ChallengePoints(
      level: $enumDecode(_$LevelEnumMap, json['level']),
      current: json['current'] as int,
      max: json['max'] as int,
      percentile: (json['percentile'] as num).toDouble(),
    );

const _$LevelEnumMap = {
  Level.none: 'NONE',
  Level.iron: 'IRON',
  Level.bronze: 'BRONZE',
  Level.silver: 'SILVER',
  Level.gold: 'GOLD',
  Level.platinum: 'PLATINUM',
  Level.diamond: 'DIAMOND',
  Level.master: 'MASTER',
  Level.grandmaster: 'GRANDMASTER',
  Level.challenger: 'CHALLENGER',
  Level.highestNotLeaderboardOnly: 'HIGHEST_NOT_LEADERBOARD_ONLY',
  Level.highest: 'HIGHEST',
  Level.lowest: 'LOWEST',
};
