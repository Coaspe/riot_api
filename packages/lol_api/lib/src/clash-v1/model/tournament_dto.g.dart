// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournament_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TournamentDTO _$TournamentDTOFromJson(Map<String, dynamic> json) =>
    TournamentDTO(
      id: (json['id'] as num?)?.toInt(),
      themeId: (json['themeId'] as num?)?.toInt(),
      nameKey: json['nameKey'] as String?,
      nameKeySecondary: json['nameKeySecondary'] as String?,
      schedule: (json['schedule'] as List<dynamic>?)
          ?.map((e) => TournamentPhaseDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
