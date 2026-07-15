import 'package:json_annotation/json_annotation.dart';

import '../../val-ranked-v1/model/ranked_player_dto.dart';

part 'console_leaderboard_dto.g.dart';

@JsonSerializable(createToJson: false)
class ConsoleLeaderboardDTO {
  const ConsoleLeaderboardDTO({
    required this.actId,
    required this.totalPlayers,
    required this.query,
    required this.shard,
    required this.players,
    this.tierDetails = const [],
  });

  final String actId;
  final int totalPlayers;
  final String query;
  final String shard;
  final List<RankedPlayerDTO> players;

  /// Riot's current reference lists TierDto but does not publish its fields.
  final List<Map<String, dynamic>> tierDetails;

  factory ConsoleLeaderboardDTO.fromJson(Map<String, dynamic> json) =>
      _$ConsoleLeaderboardDTOFromJson(json);
}
