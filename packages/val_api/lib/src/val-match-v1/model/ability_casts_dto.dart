import 'package:json_annotation/json_annotation.dart';
part 'ability_casts_dto.g.dart';

@JsonSerializable(createToJson: false)
class AbilityCastsDTO {
  const AbilityCastsDTO(
      {required this.grenadeCasts,
      required this.ability1Casts,
      required this.ability2Casts,
      required this.ultimateCasts});
  final int grenadeCasts;
  final int ability1Casts;
  final int ability2Casts;
  final int ultimateCasts;
  factory AbilityCastsDTO.fromJson(Map<String, dynamic> json) =>
      _$AbilityCastsDTOFromJson(json);
}
