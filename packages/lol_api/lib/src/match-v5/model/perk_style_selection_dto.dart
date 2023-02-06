import 'package:json_annotation/json_annotation.dart';

part 'perk_style_selection_dto.g.dart';

@JsonSerializable(createToJson: false)
class PerkStyleSelectionDTO {
  const PerkStyleSelectionDTO(
      {required this.perk,
      required this.var1,
      required this.var2,
      required this.var3});
  final int perk;
  final int var1;
  final int var2;
  final int var3;
  factory PerkStyleSelectionDTO.fromJson(Map<String, dynamic> json) =>
      _$PerkStyleSelectionDTOFromJson(json);
}
