// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replay_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReplayDTO _$ReplayDTOFromJson(Map<String, dynamic> json) => ReplayDTO(
  total: (json['total'] as num).toInt(),
  matchFileURLs:
      (json['matchFileURLs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
);
