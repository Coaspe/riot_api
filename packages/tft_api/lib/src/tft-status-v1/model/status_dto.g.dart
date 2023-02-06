// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatusDTO _$StatusDTOFromJson(Map<String, dynamic> json) => StatusDTO(
      id: json['id'] as int,
      maintenanceStatus:
          $enumDecode(_$MaintenanceStatusEnumMap, json['maintenance_status']),
      incidentSeverity:
          $enumDecode(_$IncidentSeverityEnumMap, json['incident_severity']),
      titles: (json['titles'] as List<dynamic>)
          .map((e) => ContentDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      updates: (json['updates'] as List<dynamic>)
          .map((e) => UpdateDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['created_at'] as String,
      archiveAt: json['archive_at'] as String,
      updatedAt: json['updated_at'] as String,
      platforms: (json['platforms'] as List<dynamic>)
          .map((e) => $enumDecode(_$PlatformsEnumMap, e))
          .toList(),
    );

const _$MaintenanceStatusEnumMap = {
  MaintenanceStatus.scheduled: 'scheduled',
  MaintenanceStatus.inProgress: 'in_progress',
  MaintenanceStatus.complete: 'complete',
};

const _$IncidentSeverityEnumMap = {
  IncidentSeverity.info: 'info',
  IncidentSeverity.warning: 'warning',
  IncidentSeverity.critical: 'critical',
};

const _$PlatformsEnumMap = {
  Platforms.windows: 'windows',
  Platforms.macos: 'macos',
  Platforms.android: 'android',
  Platforms.ios: 'ios',
  Platforms.ps4: 'ps4',
  Platforms.xbone: 'xbone',
  Platforms.nintendoSwitch: 'switch',
};
