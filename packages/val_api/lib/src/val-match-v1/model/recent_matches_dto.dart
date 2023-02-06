import 'package:json_annotation/json_annotation.dart';
part 'recent_matches_dto.g.dart';

@JsonSerializable(createToJson: false)
class RecentMatchesDTO {
  const RecentMatchesDTO({
    required this.currentTime,
    required this.matchIds,
  });
  final int currentTime;

  /// A list of recent match ids.
  final List<String> matchIds;
  factory RecentMatchesDTO.fromJson(Map<String, dynamic> json) =>
      _$RecentMatchesDTOFromJson(json);
}
