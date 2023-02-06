import 'package:json_annotation/json_annotation.dart';

part 'perks.g.dart';

@JsonSerializable(createToJson: false)
class Perks {
  const Perks(
      {required this.perkIds,
      required this.perkStyle,
      required this.perkSubStyle});

  ///	IDs of the perks/runes assigned.
  final List<int> perkIds;

  /// Primary runes path
  final int perkStyle;

  ///	Secondary runes path
  final int perkSubStyle;

  factory Perks.fromJson(Map<String, dynamic> json) => _$PerksFromJson(json);
}
