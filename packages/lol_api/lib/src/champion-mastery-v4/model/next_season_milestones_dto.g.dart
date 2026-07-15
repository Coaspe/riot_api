// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'next_season_milestones_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NextSeasonMilestonesDTO _$NextSeasonMilestonesDTOFromJson(
  Map<String, dynamic> json,
) => NextSeasonMilestonesDTO(
  requireGradeCounts:
      (json['requireGradeCounts'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      ) ??
      const {},
  rewardMarks: (json['rewardMarks'] as num).toInt(),
  bonus: json['bonus'] as bool,
  rewardConfig: json['rewardConfig'] == null
      ? null
      : RewardConfigDTO.fromJson(json['rewardConfig'] as Map<String, dynamic>),
);

RewardConfigDTO _$RewardConfigDTOFromJson(Map<String, dynamic> json) =>
    RewardConfigDTO(
      rewardValue: json['rewardValue'] as String,
      rewardType: json['rewardType'] as String,
      maximumReward: (json['maximumReward'] as num).toInt(),
    );
