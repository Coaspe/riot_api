import 'package:json_annotation/json_annotation.dart';
part 'matchlist_entry_dto.g.dart';

@JsonSerializable(createToJson: false)
class MatchlistEntryDTO {
  const MatchlistEntryDTO({
    required this.matchId,
    required this.gameStartTimeMillis,
    required this.teamId,
  });
  final String matchId;
  final int gameStartTimeMillis;
  final String teamId;
  factory MatchlistEntryDTO.fromJson(Map<String, dynamic> json) =>
      _$MatchlistEntryDTOFromJson(json);
}
