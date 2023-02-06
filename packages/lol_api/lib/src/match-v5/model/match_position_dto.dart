import 'package:json_annotation/json_annotation.dart';

part 'match_position_dto.g.dart';

@JsonSerializable(createToJson: false)
class MatchPositionDTO {
  const MatchPositionDTO({required this.x, required this.y});
  final int x;
  final int y;
  factory MatchPositionDTO.fromJson(Map<String, dynamic> json) =>
      _$MatchPositionDTOFromJson(json);
}
