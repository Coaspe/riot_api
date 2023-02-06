import 'league_item_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'league_list_dto.g.dart';

// enum QueueType {
//   @JsonValue("RANKED_TFT_TURBO")
//   rankedTFTTurbo,
//   @JsonValue("RANKED_TFT")
//   rankedTFT
// }

// extension QueueTypeEx on QueueType {
//   String get valueToString {
//     switch (this) {
//       case QueueType.rankedTFTTurbo:
//         return "RANKED_TFT_TURBO";
//       default:
//         return "RANKED_TFT_TURBO";
//     }
//   }
// }

@JsonSerializable(createToJson: false)
class LeagueListDTO {
  const LeagueListDTO({
    required this.leagueId,
    required this.entries,
    required this.tier,
    required this.name,
    required this.queue,
  });
  final String leagueId;
  final List<LeagueItemDTO> entries;
  final String tier;
  final String name;

  /// Now only support "RANKED_TFT_TURBO"
  ///
  /// [queues] should be typed with enum, but there is no spec.
  final String queue;
  factory LeagueListDTO.fromJson(Map<String, dynamic> json) =>
      _$LeagueListDTOFromJson(json);
}
