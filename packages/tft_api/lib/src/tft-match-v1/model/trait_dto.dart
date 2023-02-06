import 'package:json_annotation/json_annotation.dart';

part 'trait_dto.g.dart';

@JsonSerializable(createToJson: false)
class TraitDTO {
  const TraitDTO(
      {required this.name,
      required this.numUnits,
      this.style,
      required this.tierCurrent,
      this.tierTotal});

  /// Trait name.
  final String name;

  /// Number of units with this trait.
  @JsonKey(name: "num_units")
  final int numUnits;

  /// Current style for this trait.
  ///
  /// (0 = No style, 1 = Bronze, 2 = Silver, 3 = Gold, 4 = Chromatic)
  final int? style;

  /// Current active tier for the trait.
  @JsonKey(name: "tier_current")
  final int tierCurrent;

  /// Total tiers for the trait.
  @JsonKey(name: "tier_total")
  final int? tierTotal;
  factory TraitDTO.fromJson(Map<String, dynamic> json) =>
      _$TraitDTOFromJson(json);
}
