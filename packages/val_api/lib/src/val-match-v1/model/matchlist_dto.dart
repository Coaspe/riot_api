import 'package:val_api/src/val-match-v1/model/matchlist_entry_dto.dart';
import 'package:json_annotation/json_annotation.dart';
part 'matchlist_dto.g.dart';

@JsonSerializable(createToJson: false)
class MatchlistDTO {
  const MatchlistDTO({required this.puuid, required this.history});
  final String puuid;
  final List<MatchlistEntryDTO> history;
  factory MatchlistDTO.fromJson(Map<String, dynamic> json) =>
      _$MatchlistDTOFromJson(json);
}
