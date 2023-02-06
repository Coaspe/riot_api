import 'package:json_annotation/json_annotation.dart';

part 'perk_stats_dto.g.dart';

@JsonSerializable(createToJson: false)
class PerkStatsDTO {
  const PerkStatsDTO(
      {required this.defense, required this.flex, required this.offense});
  final int defense;
  final int flex;
  final int offense;
  factory PerkStatsDTO.fromJson(Map<String, dynamic> json) =>
      _$PerkStatsDTOFromJson(json);
}
