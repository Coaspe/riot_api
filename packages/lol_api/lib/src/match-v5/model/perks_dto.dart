import 'perk_stats_dto.dart';
import 'perk_style_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'perks_dto.g.dart';

@JsonSerializable(createToJson: false)
class PerksDTO {
  const PerksDTO({required this.statPerks, required this.styles});
  final PerkStatsDTO statPerks;
  final List<PerkStyleDTO> styles;
  factory PerksDTO.fromJson(Map<String, dynamic> json) =>
      _$PerksDTOFromJson(json);
}
