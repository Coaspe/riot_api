import 'package:json_annotation/json_annotation.dart';
part 'apex_player_info_dto.g.dart';

@JsonSerializable(createToJson: false)
class ApexPlayerInfoDTO {
  const ApexPlayerInfoDTO({
    required this.puuid,
    required this.value,
    required this.position,
  });
  final String puuid;
  final double value;
  final int position;

  factory ApexPlayerInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$ApexPlayerInfoDTOFromJson(json);
}
