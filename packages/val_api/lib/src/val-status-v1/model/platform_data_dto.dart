import 'status_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'platform_data_dto.g.dart';

@JsonSerializable(createToJson: false)
class PlatformDataDTO {
  const PlatformDataDTO(
      {required this.id,
      required this.name,
      required this.locales,
      required this.maintenances,
      required this.incidents});
  final String id;
  final String name;
  final List<String> locales;
  final List<StatusDTO> maintenances;
  final List<StatusDTO> incidents;

  factory PlatformDataDTO.fromJson(Map<String, dynamic> json) =>
      _$PlatformDataDTOFromJson(json);
}
