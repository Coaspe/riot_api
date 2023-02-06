import 'package:json_annotation/json_annotation.dart';
part 'location_dto.g.dart';

@JsonSerializable(createToJson: false)
class LocationDTO {
  const LocationDTO({required this.x, required this.y});
  final int x;
  final int y;
  factory LocationDTO.fromJson(Map<String, dynamic> json) =>
      _$LocationDTOFromJson(json);
}
