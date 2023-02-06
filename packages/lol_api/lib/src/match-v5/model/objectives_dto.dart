import 'objective_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'objectives_dto.g.dart';

@JsonSerializable(createToJson: false)
class ObjectivesDTO {
  const ObjectivesDTO({
    required this.baron,
    required this.champion,
    required this.dragon,
    required this.inhibitor,
    required this.riftHerald,
    required this.tower,
  });
  final ObjectiveDTO baron;
  final ObjectiveDTO champion;
  final ObjectiveDTO dragon;
  final ObjectiveDTO inhibitor;
  final ObjectiveDTO riftHerald;
  final ObjectiveDTO tower;
  factory ObjectivesDTO.fromJson(Map<String, dynamic> json) =>
      _$ObjectivesDTOFromJson(json);
}
