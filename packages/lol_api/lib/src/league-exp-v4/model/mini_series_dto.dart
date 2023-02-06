import 'package:json_annotation/json_annotation.dart';

part 'mini_series_dto.g.dart';

@JsonSerializable(createToJson: false)
class MiniSeriesDTO {
  const MiniSeriesDTO({this.losses, this.progress, this.target, this.wins});
  final int? losses;
  final String? progress;
  final int? target;
  final int? wins;

  factory MiniSeriesDTO.fromJson(Map<String, dynamic> json) =>
      _$MiniSeriesDTOFromJson(json);
}
