import 'package:json_annotation/json_annotation.dart';
part 'finishing_damage_dto.g.dart';

@JsonSerializable(createToJson: false)
class FinishingDamageDTO {
  FinishingDamageDTO({
    required this.damageType,
    required this.damageItem,
    required this.isSecondaryFireMode,
  });

  final String damageType;
  final String damageItem;
  final bool isSecondaryFireMode;
  factory FinishingDamageDTO.fromJson(Map<String, dynamic> json) =>
      _$FinishingDamageDTOFromJson(json);
}
