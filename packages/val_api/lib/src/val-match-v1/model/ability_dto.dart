import 'package:json_annotation/json_annotation.dart';
part 'ability_dto.g.dart';

@JsonSerializable(createToJson: false)
class AbilityDTO {
  const AbilityDTO(
      {required this.grenadeEffects,
      required this.ability1Effects,
      required this.ability2Effects,
      required this.ultimateEffects});
  final String grenadeEffects;
  final String ability1Effects;
  final String ability2Effects;
  final String ultimateEffects;
  factory AbilityDTO.fromJson(Map<String, dynamic> json) =>
      _$AbilityDTOFromJson(json);
}
