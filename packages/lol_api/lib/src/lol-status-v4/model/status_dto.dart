import 'content_dto.dart';
import 'update_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'status_dto.g.dart';

@JsonSerializable(createToJson: false)
class StatusDTO {
  const StatusDTO(
      {required this.id,
      this.maintenanceStatus,
      this.incidentSeverity,
      this.titles,
      this.updates,
      this.createdAt,
      this.archiveAt,
      this.updatedAt,
      this.platforms});
  final int id;
  final String? maintenanceStatus;
  final String? incidentSeverity;
  final List<ContentDTO>? titles;
  final List<UpdateDTO>? updates;
  final String? createdAt;
  final String? archiveAt;
  final String? updatedAt;
  final List<String>? platforms;

  factory StatusDTO.fromJson(Map<String, dynamic> json) =>
      _$StatusDTOFromJson(json);
}
