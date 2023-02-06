import 'package:json_annotation/json_annotation.dart';

part 'status_content_dto.g.dart';

@JsonSerializable(createToJson: false)
class StatusContentDTO {
  const StatusContentDTO({required this.locale, required this.content});
  final String locale;
  final String content;

  factory StatusContentDTO.fromJson(Map<String, dynamic> json) =>
      _$StatusContentDTOFromJson(json);
}
