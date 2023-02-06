import 'perk_style_selection_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'perk_style_dto.g.dart';

@JsonSerializable(createToJson: false)
class PerkStyleDTO {
  const PerkStyleDTO(
      {required this.descriptions,
      required this.selections,
      required this.style});
  final String? descriptions;
  final List<PerkStyleSelectionDTO> selections;
  final int style;
  factory PerkStyleDTO.fromJson(Map<String, dynamic> json) =>
      _$PerkStyleDTOFromJson(json);
}
