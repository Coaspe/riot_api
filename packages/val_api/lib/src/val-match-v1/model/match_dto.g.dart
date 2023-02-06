// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchDTO _$MatchDTOFromJson(Map<String, dynamic> json) => MatchDTO(
      matchInfo:
          MatchInfoDTO.fromJson(json['matchInfo'] as Map<String, dynamic>),
      players: (json['players'] as List<dynamic>)
          .map((e) => MatchPlayerDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      coaches: (json['coaches'] as List<dynamic>)
          .map((e) => CoachDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      teams: (json['teams'] as List<dynamic>)
          .map((e) => TeamDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      roundResults: (json['roundResults'] as List<dynamic>)
          .map((e) => RoundResultDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
