import 'package:json_annotation/json_annotation.dart';

part 'tier_detail_dto.g.dart';

@JsonSerializable(createToJson: false)
class TierDetailDTO {
  const TierDetailDTO({
    required this.rankedRatingThreshold,
    required this.startingPage,
    required this.startingIndex,
  });
  final int rankedRatingThreshold;
  final int startingPage;
  final int startingIndex;

  factory TierDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$TierDetailDTOFromJson(json);
}
