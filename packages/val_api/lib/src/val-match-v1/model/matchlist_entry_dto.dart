import 'package:json_annotation/json_annotation.dart';
part 'matchlist_entry_dto.g.dart';

@JsonSerializable(createToJson: false)
class MatchlistEntryDTO {
  const MatchlistEntryDTO({
    required this.matchId,
    required this.gameStartTimeMillis,
    required this.queueId,
  });
  final String matchId;
  final int gameStartTimeMillis;
  final String queueId;

  @Deprecated('Use queueId')
  String get teamId => queueId;
  factory MatchlistEntryDTO.fromJson(Map<String, dynamic> json) =>
      _$MatchlistEntryDTOFromJson(json);
}
