import 'package:json_annotation/json_annotation.dart';

part 'level_to_percentile.g.dart';

@JsonSerializable(createToJson: false)
class LevelToPercentile {
  const LevelToPercentile({
    required this.none,
    required this.iron,
    required this.bronze,
    required this.silver,
    required this.gold,
    required this.platinum,
    required this.diamond,
    required this.master,
    required this.grandmaster,
    required this.challenger,
  });

  @JsonKey(name: "NONE")
  final double none;
  @JsonKey(name: "IRON")
  final double iron;
  @JsonKey(name: "BRONZE")
  final double bronze;
  @JsonKey(name: "SILVER")
  final double silver;
  @JsonKey(name: "GOLD")
  final double gold;
  @JsonKey(name: "PLATINUM")
  final double platinum;
  @JsonKey(name: "DIAMOND")
  final double diamond;
  @JsonKey(name: "MASTER")
  final double master;
  @JsonKey(name: "GRANDMASTER")
  final double grandmaster;
  @JsonKey(name: "CHALLENGER")
  final double challenger;

  factory LevelToPercentile.fromJson(Map<String, dynamic> json) =>
      _$LevelToPercentileFromJson(json);
}
