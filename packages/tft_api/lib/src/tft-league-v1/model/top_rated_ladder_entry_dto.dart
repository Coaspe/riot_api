import 'package:json_annotation/json_annotation.dart';

import 'league_entry_dto.dart';
part 'top_rated_ladder_entry_dto.g.dart';

@JsonSerializable(createToJson: false)
class TopRatedLadderEntryDTO {
  const TopRatedLadderEntryDTO({
    required this.summonerId,
    required this.summonerName,
    required this.ratedTier,
    required this.ratedRating,
    required this.wins,
    required this.previousUpdateLadderPosition,
  });
  final String summonerId;
  final String summonerName;
  final RatedTier ratedTier;
  final int ratedRating;
  final int wins;
  final int previousUpdateLadderPosition;

  factory TopRatedLadderEntryDTO.fromJson(Map<String, dynamic> json) =>
      _$TopRatedLadderEntryDTOFromJson(json);
}
