// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournament_phase_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TournamentPhaseDTO _$TournamentPhaseDTOFromJson(Map<String, dynamic> json) =>
    TournamentPhaseDTO(
      id: (json['id'] as num).toInt(),
      registrationTime: (json['registrationTime'] as num).toInt(),
      startTime: (json['startTime'] as num).toInt(),
      cancelled: json['cancelled'] as bool,
    );
