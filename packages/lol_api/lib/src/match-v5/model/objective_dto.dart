import 'package:json_annotation/json_annotation.dart';

part 'objective_dto.g.dart';

@JsonSerializable(createToJson: false)
class ObjectiveDTO {
  const ObjectiveDTO({required this.first, required this.kills});
  final bool first;
  final int kills;
  factory ObjectiveDTO.fromJson(Map<String, dynamic> json) =>
      _$ObjectiveDTOFromJson(json);
}
