import 'package:json_annotation/json_annotation.dart';

part 'meta_data_dto.g.dart';

@JsonSerializable(createToJson: false)
class MetaDataDTO {
  const MetaDataDTO(
      {required this.dataVersion,
      required this.matchId,
      required this.participants});

  /// Match data version.
  final String? dataVersion;
  final String? matchId;

  /// A list of participant PUUIDs.
  final List<String> participants;
  factory MetaDataDTO.fromJson(Map<String, dynamic> json) =>
      _$MetaDataDTOFromJson(json);
}
