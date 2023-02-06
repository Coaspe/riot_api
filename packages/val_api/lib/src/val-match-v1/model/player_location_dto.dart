import 'location_dto.dart';

import 'package:json_annotation/json_annotation.dart';
part 'player_location_dto.g.dart';

@JsonSerializable(createToJson: false)
class PlayerLocationDTO {
  PlayerLocationDTO({
    required this.subject,
    required this.viewRadians,
    required this.location,
  });

  final String subject;
  final double viewRadians;
  final LocationDTO location;
  factory PlayerLocationDTO.fromJson(Map<String, dynamic> json) =>
      _$PlayerLocationDTOFromJson(json);
}
