import 'package:json_annotation/json_annotation.dart';
part 'economy_dto.g.dart';

@JsonSerializable(createToJson: false)
class EconomyDTO {
  const EconomyDTO({
    required this.loadoutValue,
    required this.weapon,
    required this.armor,
    required this.remaining,
    required this.spent,
  });
  final int loadoutValue;
  final String weapon;
  final String armor;
  final int remaining;
  final int spent;
  factory EconomyDTO.fromJson(Map<String, dynamic> json) =>
      _$EconomyDTOFromJson(json);
}
