// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge_config_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChallengeConfigInfoDTO _$ChallengeConfigInfoDTOFromJson(
        Map<String, dynamic> json) =>
    ChallengeConfigInfoDTO(
      id: json['id'] as int,
      localizedNames: (json['localizedNames'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Map<String, String>.from(e as Map)),
      ),
      state: $enumDecodeNullable(_$StateEnumMap, json['state']),
      tracking: $enumDecodeNullable(_$TrackingEnumMap, json['tracking']),
      startTimestamp: json['startTimestamp'] as int?,
      endTimestamp: json['endTimestamp'] as int?,
      leaderboard: json['leaderboard'] as bool?,
      thresholds: (json['thresholds'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$ChallengeConfigInfoDTOToJson(
        ChallengeConfigInfoDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'localizedNames': instance.localizedNames,
      'state': _$StateEnumMap[instance.state],
      'tracking': _$TrackingEnumMap[instance.tracking],
      'startTimestamp': instance.startTimestamp,
      'endTimestamp': instance.endTimestamp,
      'leaderboard': instance.leaderboard,
      'thresholds': instance.thresholds,
    };

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
