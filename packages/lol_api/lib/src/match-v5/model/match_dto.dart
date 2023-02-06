import 'package:json_annotation/json_annotation.dart';
import 'info_dto.dart';
import 'meta_data_dto.dart';

part 'match_dto.g.dart';

@JsonSerializable(createToJson: false)
class MatchDTO {
  const MatchDTO({required this.metadata, required this.info});
  final MetaDataDTO metadata;
  final InfoDTO info;
  factory MatchDTO.fromJson(Map<String, dynamic> json) =>
      _$MatchDTOFromJson(json);
}
