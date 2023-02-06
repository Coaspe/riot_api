import 'package:json_annotation/json_annotation.dart';
import 'package:tft_api/src/tft-status-v1/model/content_dto.dart';

part 'update_dto.g.dart';

enum PublishLocation { riotclient, riotstatus, game }

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
  @JsonKey(name: "publish_locations")
  final List<PublishLocation> publishLocations;
  final List<ContentDTO> translations;
  @JsonKey(name: "created_at")
  final String createdAt;
  @JsonKey(name: "updated_at")
  final String updatedAt;
  factory UpdateDTO.fromJson(Map<String, dynamic> json) =>
      _$UpdateDTOFromJson(json);
}
