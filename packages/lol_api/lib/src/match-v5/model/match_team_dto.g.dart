// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_team_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchTeamDTO _$MatchTeamDTOFromJson(Map<String, dynamic> json) => MatchTeamDTO(
      bans: (json['bans'] as List<dynamic>)
          .map((e) => BanDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      objectives:
          ObjectivesDTO.fromJson(json['objectives'] as Map<String, dynamic>),
      teamId: json['teamId'] as int,
      win: json['win'] as bool,
    );
