import 'package:json_annotation/json_annotation.dart';

part 'content_dto.g.dart';

@JsonSerializable(createToJson: false)
class ContentDTO {
  const ContentDTO({this.locale, this.content});
  final String? locale;
  final String? content;
  factory ContentDTO.fromJson(Map<String, dynamic> json) =>
      _$ContentDTOFromJson(json);
}
