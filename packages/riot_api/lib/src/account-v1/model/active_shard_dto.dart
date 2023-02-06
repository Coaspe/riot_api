import 'package:json_annotation/json_annotation.dart';

part 'active_shard_dto.g.dart';

@JsonSerializable(createToJson: false)
class ActiveShardDTO {
  final String puuid;
  final String game;
  final String activeShard;

  ActiveShardDTO({
    required this.puuid,
    required this.game,
    required this.activeShard,
  });

  factory ActiveShardDTO.fromJson(Map<String, dynamic> json) =>
      _$ActiveShardDTOFromJson(json);
}
