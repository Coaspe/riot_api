import 'package:lol_api/src/lol-challenges-v1/lol_challenges_v1.dart';
import 'package:json_annotation/json_annotation.dart';

part 'challenge_info.g.dart';

@JsonSerializable(createToJson: false)
class ChallengeInfo {
  const ChallengeInfo(
      {required this.challengeId,
      required this.percentile,
      required this.value,
      required this.level,
      required this.achievedTime});
  final int challengeId;
  final double percentile;
  final Level level;
  final double value;
  final int? achievedTime;
  factory ChallengeInfo.fromJson(Map<String, dynamic> json) =>
      _$ChallengeInfoFromJson(json);
}
