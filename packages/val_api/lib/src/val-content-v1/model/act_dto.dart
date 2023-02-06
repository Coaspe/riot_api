import 'package:val_api/src/val-content-v1/model/localized_names_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'act_dto.g.dart';

@JsonSerializable(createToJson: false)
class ActDTO {
  const ActDTO(
      {required this.name,
      required this.localizedNames,
      required this.id,
      required this.isActive,
      this.parentId,
      this.type});
  final String name;
  final LocalizedNamesDTO localizedNames;
  final String id;
  final bool isActive;
  final String? parentId;
  final String? type;
  factory ActDTO.fromJson(Map<String, dynamic> json) => _$ActDTOFromJson(json);
}
