import 'package:json_annotation/json_annotation.dart';

part 'observer.g.dart';

@JsonSerializable(createToJson: false)
class Observer {
  const Observer({required this.encryptionKey});

  /// Key used to decrypt the spectator grid game data for playback
  final String encryptionKey;

  factory Observer.fromJson(Map<String, dynamic> json) =>
      _$ObserverFromJson(json);
}
