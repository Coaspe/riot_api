// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leaderboard_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeaderboardDTO _$LeaderboardDTOFromJson(Map<String, dynamic> json) =>
    LeaderboardDTO(
      shard: json['shard'] as String,
      actId: json['actId'] as String,
      totalPlayers: (json['totalPlayers'] as num).toInt(),
      players: (json['players'] as List<dynamic>)
          .map((e) => RankedPlayerDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      immortalStartingPage: (json['immortalStartingPage'] as num?)?.toInt(),
      immortalStartingIndex: (json['immortalStartingIndex'] as num?)?.toInt(),
      topTierRRThreshold: (json['topTierRRThreshold'] as num?)?.toInt(),
      startIndex: (json['startIndex'] as num?)?.toInt(),
      tierDetails: (json['tierDetails'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, TierDetailDTO.fromJson(e as Map<String, dynamic>)),
      ),
      query: json['query'] as String?,
    );
