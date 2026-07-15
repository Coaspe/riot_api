// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge_config_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChallengeConfigInfoDTO _$ChallengeConfigInfoDTOFromJson(
  Map<String, dynamic> json,
) => ChallengeConfigInfoDTO(
  id: (json['id'] as num).toInt(),
  localizedNames: (json['localizedNames'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, Map<String, String>.from(e as Map)),
  ),
  state: $enumDecodeNullable(_$StateEnumMap, json['state']),
  tracking: $enumDecodeNullable(_$TrackingEnumMap, json['tracking']),
  startTimestamp: (json['startTimestamp'] as num?)?.toInt(),
  endTimestamp: (json['endTimestamp'] as num?)?.toInt(),
  leaderboard: json['leaderboard'] as bool?,
  thresholds: (json['thresholds'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, (e as num).toDouble()),
  ),
);

const _$StateEnumMap = {
  State.enabled: 'ENABLED',
  State.disable: 'DISABLED',
  State.hidden: 'HIDDEN',
  State.archived: 'ARCHIVED',
};

const _$TrackingEnumMap = {
  Tracking.lifetime: 'LIFETIME',
  Tracking.season: 'SEASON',
};
