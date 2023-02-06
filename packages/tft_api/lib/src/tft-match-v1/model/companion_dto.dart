import 'package:json_annotation/json_annotation.dart';

part 'companion_dto.g.dart';

@JsonSerializable(createToJson: false)
class CompanionDTO {
  const CompanionDTO(
      {required this.skinId, required this.contentId, required this.species});
  @JsonKey(name: "skin_ID")
  final int skinId;
  @JsonKey(name: "content_ID")
  final String contentId;
  final String species;
  factory CompanionDTO.fromJson(Map<String, dynamic> json) =>
      _$CompanionDTOFromJson(json);
}
