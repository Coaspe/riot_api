import 'package:json_annotation/json_annotation.dart';

part 'mini_series_dto.g.dart';

@JsonSerializable(createToJson: false)
class MiniSeriesDTO {
  const MiniSeriesDTO(
      {required this.losses,
      required this.progress,
      required this.target,
      required this.wins});
  final int losses;
  final String progress;
  final int target;
  final int wins;

  factory MiniSeriesDTO.fromJson(Map<String, dynamic> json) =>
      _$MiniSeriesDTOFromJson(json);
}
