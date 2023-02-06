import 'package:val_api/src/val-content-v1/model/content_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_dto.g.dart';

enum PublishLocations { riotclient, riotstatus, game }

@JsonSerializable(createToJson: false)
class UpdateDTO {
  const UpdateDTO({
    required this.id,
    required this.author,
    required this.publish,
    required this.publishLocations,
    required this.translations,
    required this.createdAt,
    required this.updatedAt,
  });
  final int id;
  final String author;
  final bool publish;
  final List<PublishLocations> publishLocations;
  final List<ContentDTO> translations;
  final String createdAt;
  final String updatedAt;

  factory UpdateDTO.fromJson(Map<String, dynamic> json) =>
      _$UpdateDTOFromJson(json);
}
