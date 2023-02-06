import 'package:json_annotation/json_annotation.dart';
part 'coach_dto.g.dart';

@JsonSerializable(createToJson: false)
class CoachDTO {
  const CoachDTO({required this.puuid, required this.teamId});
  final String puuid;
  final String teamId;
  factory CoachDTO.fromJson(Map<String, dynamic> json) =>
      _$CoachDTOFromJson(json);
}
