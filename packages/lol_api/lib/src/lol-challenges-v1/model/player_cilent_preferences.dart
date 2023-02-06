import 'package:json_annotation/json_annotation.dart';

part 'player_cilent_preferences.g.dart';

@JsonSerializable(createToJson: false)
class PlayerCilentPreferences {
  const PlayerCilentPreferences(
      {required this.bannerAccent,
      required this.title,
      required this.challengeIds});
  final String bannerAccent;
  final String title;
  final List<int> challengeIds;
  factory PlayerCilentPreferences.fromJson(Map<String, dynamic> json) =>
      _$PlayerCilentPreferencesFromJson(json);
}
