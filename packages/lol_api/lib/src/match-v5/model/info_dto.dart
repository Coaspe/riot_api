import 'participant_dto.dart';
import 'match_team_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'info_dto.g.dart';

@JsonSerializable(createToJson: false)
class InfoDTO {
  const InfoDTO({
    required this.gameCreation,
    required this.gameDuration,
    required this.gameEndTimestamp,
    required this.gameId,
    required this.gameMode,
    required this.gameName,
    required this.gameStartTimestamp,
    required this.gameType,
    required this.gameVersion,
    required this.mapId,
    required this.participants,
    required this.platformId,
    required this.queueId,
    required this.teams,
    required this.tournamentCode,
  });

  /// Unix timestamp for when the game is created on the game server (i.e., the loading screen).
  final int gameCreation;

  /// Prior to patch 11.20, this field returns the game length in
  /// milliseconds calculated from gameEndTimestamp - gameStartTimestamp.
  ///
  /// Post patch 11.20, this field returns the max timePlayed of any participant in the game in seconds,
  /// which makes the behavior of this field consistent with that of match-v4.
  /// The best way to handling the change in this field is to treat the value as
  /// milliseconds if the gameEndTimestamp field isn't in the response and to treat the value as seconds if gameEndTimestamp is in the response.
  final int gameDuration;

  /// Unix timestamp for when match ends on the game server.
  ///
  /// This timestamp can occasionally be significantly longer than when the match "ends".
  /// The most reliable way of determining the timestamp for the end of the match
  /// would be to add the max time played of any participant to the gameStartTimestamp.
  /// This field was added to match-v5 in patch 11.20 on Oct 5th, 2021.
  final int gameEndTimestamp;

  final int gameId;

  /// Refer to the Game Constants documentation.
  final String gameMode;

  final String gameName;

  /// Unix timestamp for when match starts on the game server.
  final int gameStartTimestamp;

  final String? gameType;

  /// The first two parts can be used to determine the patch a game was played on.
  final String? gameVersion;

  /// Refer to the Game Constants documentation.
  final int mapId;
  final List<ParticipantDTO> participants;

  /// Platform where the match was played.
  final String? platformId;

  /// Refer to the Game Constants documentation.
  final int queueId;
  final List<MatchTeamDTO> teams;

  /// Tournament code used to generate the match.
  ///
  /// This field was added to match-v5 in patch 11.13 on June 23rd, 2021.
  final String? tournamentCode;

  factory InfoDTO.fromJson(Map<String, dynamic> json) =>
      _$InfoDTOFromJson(json);
}
