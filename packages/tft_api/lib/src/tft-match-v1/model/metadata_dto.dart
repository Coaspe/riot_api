import 'package:json_annotation/json_annotation.dart';

part 'metadata_dto.g.dart';

@JsonSerializable(createToJson: false)
class MetadataDTO {
  const MetadataDTO(
      {required this.dataVersion,
      required this.matchId,
      required this.participants});

  /// Match data version.
  @JsonKey(name: "data_version")
  final String dataVersion;

  /// Match id.
  @JsonKey(name: "match_id")
  final String matchId;

  /// A list of participant PUUIDs.
  final List<String> participants;
  factory MetadataDTO.fromJson(Map<String, dynamic> json) =>
      _$MetadataDTOFromJson(json);
}
