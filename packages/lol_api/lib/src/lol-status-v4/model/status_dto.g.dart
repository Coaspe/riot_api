// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatusDTO _$StatusDTOFromJson(Map<String, dynamic> json) => StatusDTO(
      id: json['id'] as int,
      maintenanceStatus: json['maintenanceStatus'] as String?,
      incidentSeverity: json['incidentSeverity'] as String?,
      titles: (json['titles'] as List<dynamic>?)
          ?.map((e) => ContentDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      updates: (json['updates'] as List<dynamic>?)
          ?.map((e) => UpdateDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String?,
      archiveAt: json['archiveAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      platforms: (json['platforms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );
