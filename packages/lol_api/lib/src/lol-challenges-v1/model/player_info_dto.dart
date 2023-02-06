import 'package:json_annotation/json_annotation.dart';
import 'challenge_points.dart';
import 'challenge_info.dart';
import 'player_cilent_preferences.dart';

part 'player_info_dto.g.dart';

enum Category {
  @JsonValue("EXPERTISE")
  expertise,
  @JsonValue("TEAMWORK")
  teamwork,
  @JsonValue("IMAGINATION")
  imagination,
  @JsonValue("COLLECTION")
  collection,
  @JsonValue("VETERANCY")
  veterancy
}

@JsonSerializable(createToJson: false)
class PlayerInfoDTO {
  const PlayerInfoDTO(
      {required this.challenges,
      required this.preferences,
      required this.totalPoints,
      required this.categoryPoints});

  final List<ChallengeInfo> challenges;
  final PlayerCilentPreferences preferences;
  final ChallengePoints totalPoints;
  final Map<Category, ChallengePoints> categoryPoints;
  factory PlayerInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$PlayerInfoDTOFromJson(json);
}
