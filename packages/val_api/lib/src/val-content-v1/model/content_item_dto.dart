import 'localized_names_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'content_item_dto.g.dart';

@JsonSerializable(createToJson: false)
class ContentItemDTO {
  const ContentItemDTO(
      {required this.name,
      required this.localizedNames,
      required this.id,
      required this.assetName,
      this.assetPath});
  final String name;
  final LocalizedNamesDTO localizedNames;
  final String id;
  final String assetName;
  final String? assetPath;
  factory ContentItemDTO.fromJson(Map<String, dynamic> json) =>
      _$ContentItemDTOFromJson(json);
}
