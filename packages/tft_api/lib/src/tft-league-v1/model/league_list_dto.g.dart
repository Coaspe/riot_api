// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeagueListDTO _$LeagueListDTOFromJson(Map<String, dynamic> json) =>
    LeagueListDTO(
      leagueId: json['leagueId'] as String,
      entries: (json['entries'] as List<dynamic>)
          .map((e) => LeagueItemDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      tier: json['tier'] as String,
      name: json['name'] as String,
      queue: json['queue'] as String,
    );
