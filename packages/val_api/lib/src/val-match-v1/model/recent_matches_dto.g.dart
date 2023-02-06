// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_matches_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecentMatchesDTO _$RecentMatchesDTOFromJson(Map<String, dynamic> json) =>
    RecentMatchesDTO(
      currentTime: json['currentTime'] as int,
      matchIds:
          (json['matchIds'] as List<dynamic>).map((e) => e as String).toList(),
    );
