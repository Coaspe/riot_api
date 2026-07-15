// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamDTO _$TeamDTOFromJson(Map<String, dynamic> json) => TeamDTO(
  teamId: json['teamId'] as String,
  won: json['won'] as bool,
  roundsPlayed: (json['roundsPlayed'] as num).toInt(),
  roundsWon: (json['roundsWon'] as num).toInt(),
  numPoints: (json['numPoints'] as num).toInt(),
);
