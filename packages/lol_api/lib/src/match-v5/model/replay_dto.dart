import 'package:json_annotation/json_annotation.dart';

part 'replay_dto.g.dart';

@JsonSerializable(createToJson: false)
class ReplayDTO {
  const ReplayDTO({required this.total, this.matchFileURLs = const []});

  final int total;
  final List<String> matchFileURLs;

  factory ReplayDTO.fromJson(Map<String, dynamic> json) =>
      _$ReplayDTOFromJson(json);
}
