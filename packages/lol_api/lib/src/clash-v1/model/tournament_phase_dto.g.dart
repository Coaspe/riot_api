// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournament_phase_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TournamentPhaseDTO _$TournamentPhaseDTOFromJson(Map<String, dynamic> json) =>
    TournamentPhaseDTO(
      id: json['id'] as int,
      registrationTime: json['registrationTime'] as int,
      startTime: json['startTime'] as int,
      cancelled: json['cancelled'] as bool,
    );

Map<String, dynamic> _$TournamentPhaseDTOToJson(TournamentPhaseDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'registrationTime': instance.registrationTime,
      'startTime': instance.startTime,
      'cancelled': instance.cancelled,
    };
