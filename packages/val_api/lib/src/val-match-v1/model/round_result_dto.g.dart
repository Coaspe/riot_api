// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'round_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoundResultDTO _$RoundResultDTOFromJson(Map<String, dynamic> json) =>
    RoundResultDTO(
      roundNum: json['roundNum'] as int,
      roundResult: json['roundResult'] as String,
      roundCeremony: json['roundCeremony'] as String,
      winningTeam: json['winningTeam'] as String,
      bombPlanter: json['bombPlanter'] as String,
      bombDefuser: json['bombDefuser'] as String,
      plantRoundTime: json['plantRoundTime'] as int,
      plantPlayerLocations: (json['plantPlayerLocations'] as List<dynamic>)
          .map((e) => PlayerLocationDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      plantLocation:
          LocationDTO.fromJson(json['plantLocation'] as Map<String, dynamic>),
      plantSite: json['plantSite'] as String,
      defuseRoundTime: json['defuseRoundTime'] as int,
      defusePlayerLocations: (json['defusePlayerLocations'] as List<dynamic>)
          .map((e) => PlayerLocationDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      defuseLocation:
          LocationDTO.fromJson(json['defuseLocation'] as Map<String, dynamic>),
      playerStats: (json['playerStats'] as List<dynamic>)
          .map((e) => PlayerRoundStatsDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      roundResultCode: json['roundResultCode'] as String,
    );
