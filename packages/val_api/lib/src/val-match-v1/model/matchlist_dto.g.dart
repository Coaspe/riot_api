// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matchlist_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchlistDTO _$MatchlistDTOFromJson(Map<String, dynamic> json) => MatchlistDTO(
      puuid: json['puuid'] as String,
      history: (json['history'] as List<dynamic>)
          .map((e) => MatchlistEntryDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
