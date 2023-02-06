// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChallengeInfo _$ChallengeInfoFromJson(Map<String, dynamic> json) =>
    ChallengeInfo(
      challengeId: json['challengeId'] as int,
      percentile: (json['percentile'] as num).toDouble(),
      value: (json['value'] as num).toDouble(),
      level: $enumDecode(_$LevelEnumMap, json['level']),
      achievedTime: json['achievedTime'] as int?,
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
