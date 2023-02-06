import 'info_dto.dart';
import 'metadata_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'match_dto.g.dart';

@JsonSerializable(createToJson: false)
class MatchDTO {
  const MatchDTO({
    required this.metadata,
    required this.info,
  });
  final MetadataDTO metadata;
  final InfoDTO info;
  factory MatchDTO.fromJson(Map<String, dynamic> json) =>
      _$MatchDTOFromJson(json);
}
