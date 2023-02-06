import 'ranked_player_dto.dart';
import 'tier_detail_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'leaderboard_dto.g.dart';

@JsonSerializable(createToJson: false)
class LeaderboardDTO {
  const LeaderboardDTO(
      {required this.shard,
      required this.actId,
      required this.totalPlayers,
      required this.players,
      this.immortalStartingPage,
      this.immortalStartingIndex,
      this.topTierRRThreshold,
      this.startIndex,
      this.tierDetails,
      this.query});

  /// The shard for the given leaderboard.
  final String shard;

  /// The act id for the given leaderboard. Act ids can be found using the val-content API.
  final String actId;

  /// The total number of players in the leaderboard.
  final int totalPlayers;
  final List<RankedPlayerDTO> players;

  final int? immortalStartingPage;
  final int? immortalStartingIndex;
  final int? topTierRRThreshold;
  final int? startIndex;
  final Map<String, TierDetailDTO>? tierDetails;
  final String? query;

  factory LeaderboardDTO.fromJson(Map<String, dynamic> json) =>
      _$LeaderboardDTOFromJson(json);
}
