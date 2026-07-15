// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'console_leaderboard_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConsoleLeaderboardDTO _$ConsoleLeaderboardDTOFromJson(
  Map<String, dynamic> json,
) => ConsoleLeaderboardDTO(
  actId: json['actId'] as String,
  totalPlayers: (json['totalPlayers'] as num).toInt(),
  query: json['query'] as String,
  shard: json['shard'] as String,
  players: (json['players'] as List<dynamic>)
      .map((e) => RankedPlayerDTO.fromJson(e as Map<String, dynamic>))
      .toList(),
  tierDetails:
      (json['tierDetails'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList() ??
      const [],
);
