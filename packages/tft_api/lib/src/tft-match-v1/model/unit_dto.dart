import 'package:json_annotation/json_annotation.dart';

part 'unit_dto.g.dart';

@JsonSerializable(createToJson: false)
class UnitDTO {
  const UnitDTO(
      {required this.items,
      required this.characterId,
      this.chosen,
      required this.name,
      required this.rarity,
      required this.tier});

  /// A list of the unit's items.
  ///
  /// Please refer to the Teamfight Tactics documentation for item ids.
  final List<int> items;

  /// This field was introduced in patch 9.22 with data_version 2.
  @JsonKey(name: "character_id")
  final String characterId;

  /// If a unit is chosen as part of the Fates set mechanic,
  /// the chosen trait will be indicated by this field.
  /// Otherwise this field is excluded from the response.
  final String? chosen;

  /// Unit name. This field is often left blank.
  final String name;

  /// Unit rarity. This doesn't equate to the unit cost.
  final int rarity;

  /// Unit tier.
  final int tier;
  factory UnitDTO.fromJson(Map<String, dynamic> json) =>
      _$UnitDTOFromJson(json);
}
