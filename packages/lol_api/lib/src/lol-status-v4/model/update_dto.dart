import 'content_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_dto.g.dart';

@JsonSerializable(createToJson: false)
class UpdateDTO {
  const UpdateDTO(
      {required this.id,
      required this.author,
      required this.publish,
      this.publishLocations,
      this.translations,
      this.createdAt,
      this.updatedAt});
  final int id;
  final String author;
  final bool publish;
  final List<String>? publishLocations;
  final List<ContentDTO>? translations;
  final String? createdAt;
  final String? updatedAt;
  factory UpdateDTO.fromJson(Map<String, dynamic> json) =>
      _$UpdateDTOFromJson(json);
}
