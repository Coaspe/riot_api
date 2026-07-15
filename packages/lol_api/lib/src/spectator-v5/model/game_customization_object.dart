import 'package:json_annotation/json_annotation.dart';

part 'game_customization_object.g.dart';

@JsonSerializable(createToJson: false)
class GameCustomizationObject {
  const GameCustomizationObject({
    required this.category,
    required this.content,
  });

  /// Category identifier for game customization.
  final String category;

  /// Game customization content.
  final String content;

  factory GameCustomizationObject.fromJson(Map<String, dynamic> json) =>
      _$GameCustomizationObjectFromJson(json);
}
