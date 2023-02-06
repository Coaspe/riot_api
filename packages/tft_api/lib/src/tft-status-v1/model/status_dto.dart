import 'package:json_annotation/json_annotation.dart';
import 'package:tft_api/src/tft-status-v1/model/update_dto.dart';
import 'content_dto.dart';

part 'status_dto.g.dart';

enum IncidentSeverity { info, warning, critical }

enum MaintenanceStatus {
  scheduled,
  @JsonValue("in_progress")
  inProgress,
  complete
}

enum Platforms {
  windows,
  macos,
  android,
  ios,
  ps4,
  xbone,
  @JsonValue("switch")
  nintendoSwitch
}

@JsonSerializable(createToJson: false)
class StatusDTO {
  const StatusDTO({
    required this.id,
    required this.maintenanceStatus,
    required this.incidentSeverity,
    required this.titles,
    required this.updates,
    required this.createdAt,
    required this.archiveAt,
    required this.updatedAt,
    required this.platforms,
  });
  final int id;

  /// (Legal values: info, warning, critical)
  @JsonKey(name: "maintenance_status")
  final MaintenanceStatus maintenanceStatus;

  /// (Legal values: info, warning, critical)
  @JsonKey(name: "incident_severity")
  final IncidentSeverity incidentSeverity;

  final List<ContentDTO> titles;
  final List<UpdateDTO> updates;
  @JsonKey(name: "archive_at")
  final String archiveAt;
  @JsonKey(name: "created_at")
  final String createdAt;
  @JsonKey(name: "updated_at")
  final String updatedAt;
  final List<Platforms> platforms;
  factory StatusDTO.fromJson(Map<String, dynamic> json) =>
      _$StatusDTOFromJson(json);
}
