import 'package:json_annotation/json_annotation.dart';

part 'tournament_phase_dto.g.dart';

@JsonSerializable(createToJson: false)
class TournamentPhaseDTO {
  const TournamentPhaseDTO(
      {required this.id,
      required this.registrationTime,
      required this.startTime,
      required this.cancelled});
  final int id;
  final int registrationTime;
  final int startTime;
  final bool cancelled;
  factory TournamentPhaseDTO.fromJson(Map<String, dynamic> json) =>
      _$TournamentPhaseDTOFromJson(json);
}
