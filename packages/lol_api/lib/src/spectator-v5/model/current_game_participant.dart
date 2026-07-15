import 'game_customization_object.dart';
import 'perks.dart';
import 'package:json_annotation/json_annotation.dart';

part 'current_game_participant.g.dart';

@JsonSerializable(createToJson: false)
class CurrentGameParticipant {
  const CurrentGameParticipant({
    required this.championId,
    required this.perks,
    required this.profileIconId,
    required this.bot,
    required this.teamId,
    this.puuid,
    required this.spell1Id,
    required this.spell2Id,
    this.gameCustomizationObjects = const [],
  });

  ///	The ID of the champion played by this participant
  final int championId;

  /// Perks/Runes Reforged Information
  final Perks perks;

  ///	The ID of the profile icon used by this participant
  final int profileIconId;

  ///	Flag indicating whether or not this participant is a bot
  final bool bot;

  ///	The team ID of this participant, indicating the participant's team
  final int teamId;

  /// The encrypted PUUID, or null when the player is anonymous.
  final String? puuid;

  /// The ID of the first summoner spell used by this participant
  final int spell1Id;

  ///	The ID of the second summoner spell used by this participant
  final int spell2Id;

  ///	List of Game Customizations
  final List<GameCustomizationObject> gameCustomizationObjects;

  factory CurrentGameParticipant.fromJson(Map<String, dynamic> json) =>
      _$CurrentGameParticipantFromJson(json);
}
