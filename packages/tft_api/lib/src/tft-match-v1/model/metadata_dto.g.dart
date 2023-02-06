// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metadata_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MetadataDTO _$MetadataDTOFromJson(Map<String, dynamic> json) => MetadataDTO(
      dataVersion: json['data_version'] as String,
      matchId: json['match_id'] as String,
      participants: (json['participants'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );
