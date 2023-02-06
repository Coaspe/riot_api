import 'package:json_annotation/json_annotation.dart';
part 'damage_dto.g.dart';

@JsonSerializable(createToJson: false)
class DamageDTO {
  DamageDTO({
    required this.receiver,
    required this.damage,
    required this.legshots,
    required this.bodyshots,
    required this.headshots,
  });

  final String receiver;
  final int damage;
  final int legshots;
  final int bodyshots;
  final int headshots;
  factory DamageDTO.fromJson(Map<String, dynamic> json) =>
      _$DamageDTOFromJson(json);
}
