import 'package:json_annotation/json_annotation.dart';
part 'challenge_config_info_dto.g.dart';

enum State {
  @JsonValue("ENABLED")
  enabled,
  @JsonValue("DISABLED")
  disable,
  @JsonValue("HIDDEN")
  hidden,
  @JsonValue("ARCHIVED")
  archived
}

enum Tracking {
  @JsonValue("LIFETIME")
  lifetime,
  @JsonValue("SEASON")
  season
}

@JsonSerializable(createToJson: false)
class ChallengeConfigInfoDTO {
  const ChallengeConfigInfoDTO(
      {required this.id,
      required this.localizedNames,
      this.state,
      this.tracking,
      this.startTimestamp,
      this.endTimestamp,
      this.leaderboard,
      this.thresholds});
  final int id;
  final Map<String, Map<String, String>> localizedNames;
  final State? state;
  final Tracking? tracking;
  final int? startTimestamp;
  final int? endTimestamp;
  final bool? leaderboard;
  final Map<String, double>? thresholds;

  factory ChallengeConfigInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$ChallengeConfigInfoDTOFromJson(json);
}
