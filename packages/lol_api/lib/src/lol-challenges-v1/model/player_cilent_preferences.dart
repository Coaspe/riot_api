import 'package:json_annotation/json_annotation.dart';

part 'player_cilent_preferences.g.dart';

@JsonSerializable(createToJson: false)
class PlayerCilentPreferences {
  const PlayerCilentPreferences({
    required this.bannerAccent,
    required this.title,
    required this.challengeIds,
    this.crestBorder,
    this.prestigeCrestBorderLevel,
  });
  final String bannerAccent;
  final String title;
  final List<String> challengeIds;
  final String? crestBorder;
  final int? prestigeCrestBorderLevel;
  factory PlayerCilentPreferences.fromJson(Map<String, dynamic> json) =>
      _$PlayerCilentPreferencesFromJson(json);
}

typedef PlayerClientPreferencesDTO = PlayerCilentPreferences;
