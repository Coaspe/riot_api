import '../lol_challenges_v1.dart';
import 'package:json_annotation/json_annotation.dart';

part 'challenge_points.g.dart';

@JsonSerializable(createToJson: false)
class ChallengePoints {
  const ChallengePoints({
    required this.level,
    required this.current,
    required this.max,
    required this.percentile,
  });
  final Level level;
  final int current;
  final int max;
  final double percentile;
  factory ChallengePoints.fromJson(Map<String, dynamic> json) =>
      _$ChallengePointsFromJson(json);
}
