import 'package:json_annotation/json_annotation.dart';

part 'player_dto.g.dart';

@JsonSerializable(createToJson: false)
class PlayerDTO {
  const PlayerDTO(
      {required this.summonerId,
      required this.teamId,
      required this.position,
      required this.role});
  final String summonerId;
  final String teamId;
  final String position;
  final String role;
  factory PlayerDTO.fromJson(Map<String, dynamic> json) =>
      _$PlayerDTOFromJson(json);
}
