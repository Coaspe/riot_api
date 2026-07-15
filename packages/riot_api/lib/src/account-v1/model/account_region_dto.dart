import 'package:json_annotation/json_annotation.dart';

part 'account_region_dto.g.dart';

@JsonSerializable(createToJson: false)
class AccountRegionDTO {
  const AccountRegionDTO({
    required this.puuid,
    required this.game,
    required this.region,
  });

  final String puuid;
  final String game;
  final String region;

  factory AccountRegionDTO.fromJson(Map<String, dynamic> json) =>
      _$AccountRegionDTOFromJson(json);
}
