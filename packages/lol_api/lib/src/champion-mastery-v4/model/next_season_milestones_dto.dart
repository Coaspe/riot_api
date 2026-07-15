import 'package:json_annotation/json_annotation.dart';

part 'next_season_milestones_dto.g.dart';

@JsonSerializable(createToJson: false)
class NextSeasonMilestonesDTO {
  const NextSeasonMilestonesDTO({
    this.requireGradeCounts = const {},
    required this.rewardMarks,
    required this.bonus,
    this.rewardConfig,
  });

  final Map<String, int> requireGradeCounts;
  final int rewardMarks;
  final bool bonus;
  final RewardConfigDTO? rewardConfig;

  factory NextSeasonMilestonesDTO.fromJson(Map<String, dynamic> json) =>
      _$NextSeasonMilestonesDTOFromJson(json);
}

@JsonSerializable(createToJson: false)
class RewardConfigDTO {
  const RewardConfigDTO({
    required this.rewardValue,
    required this.rewardType,
    required this.maximumReward,
  });

  final String rewardValue;
  final String rewardType;
  final int maximumReward;

  factory RewardConfigDTO.fromJson(Map<String, dynamic> json) =>
      _$RewardConfigDTOFromJson(json);
}
