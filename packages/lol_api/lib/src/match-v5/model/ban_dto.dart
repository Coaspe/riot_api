import 'package:json_annotation/json_annotation.dart';

part 'ban_dto.g.dart';

@JsonSerializable()
class BanDTO {
  const BanDTO({
    required this.championId,
    required this.pickTurn,
  });
  final int championId;
  final int pickTurn;
  factory BanDTO.fromJson(Map<String, dynamic> json) => _$BanDTOFromJson(json);
}
