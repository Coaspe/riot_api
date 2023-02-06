import 'package:json_annotation/json_annotation.dart';
import 'status_content_dto.dart';
import 'update_dto.dart';

part 'status_dto.g.dart';

enum MaintenanceStatus {
  scheduled,
  @JsonValue("in_progress")
  inProgress,
  complete
}

enum IncidentSeverity { info, warning, critical }

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
  final MaintenanceStatus maintenanceStatus;
  final IncidentSeverity incidentSeverity;
  final List<StatusContentDTO> titles;
  final List<UpdateDTO> updates;
  final String createdAt;
  final String archiveAt;
  final String updatedAt;
  final List<Platforms> platforms;

  factory StatusDTO.fromJson(Map<String, dynamic> json) =>
      _$StatusDTOFromJson(json);
}
