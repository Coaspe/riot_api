import 'tournament_phase_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tournament_dto.g.dart';

@JsonSerializable(createToJson: false)
class TournamentDTO {
  const TournamentDTO({
    required this.id,
    required this.themeId,
    this.nameKey,
    this.nameKeySecondary,
    this.schedule,
  });

  final int? id;
  final int? themeId;
  final String? nameKey;
  final String? nameKeySecondary;
  final List<TournamentPhaseDTO>? schedule;

  factory TournamentDTO.fromJson(Map<String, dynamic> json) =>
      _$TournamentDTOFromJson(json);
}
