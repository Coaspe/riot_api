import 'match_timeline_info_dto.dart';
import 'meta_data_dto.dart';

import 'package:json_annotation/json_annotation.dart';

part 'match_timeline_dto.g.dart';

@JsonSerializable(createToJson: false)
class MatchTimelineDTO {
  const MatchTimelineDTO({required this.metaData, required this.info});
  final MetaDataDTO metaData;
  final MatchTimelineInfoDTO info;
  factory MatchTimelineDTO.fromJson(Map<String, dynamic> json) =>
      _$MatchTimelineDTOFromJson(json);
}
