import 'package:json_annotation/json_annotation.dart';

part 'champion_mastery_dto.g.dart';

/// This object contains single Champion Mastery information for player and champion combination.
@JsonSerializable(createToJson: false)
class ChampionMasteryDTO {
  const ChampionMasteryDTO(
      {required this.championPointsUntilNextLevel,
      required this.chestGranted,
      required this.championId,
      required this.lastPlayTime,
      required this.championLevel,
      required this.summonerId,
      required this.championPoints,
      required this.championPointsSinceLastLevel,
      required this.tokensEarned});

  /// Number of points needed to achieve next level.
  ///
  /// Zero if player reached maximum champion level for this champion.
  final int championPointsUntilNextLevel;

  ///	Is chest granted for this champion or not in current season.
  final bool chestGranted;

  ///	Champion ID for this entry.
  final int championId;

  /// Last time this champion was played by this player - in Unix milliseconds time format.
  final int lastPlayTime;

  /// Champion level for specified player and champion combination.
  final int championLevel;

  /// Summoner ID for this entry. (Encrypted)
  final String summonerId;

  /// Total number of champion points for this player and champion combination - they are used to determine championLevel.
  final int championPoints;

  /// Number of points earned since current level has been achieved.
  final int championPointsSinceLastLevel;

  /// The token earned for this champion at the current championLevel.
  ///
  /// When the championLevel is advanced the tokensEarned resets to 0.
  final int tokensEarned;

  factory ChampionMasteryDTO.fromJson(Map<String, dynamic> json) =>
      _$ChampionMasteryDTOFromJson(json);
}
