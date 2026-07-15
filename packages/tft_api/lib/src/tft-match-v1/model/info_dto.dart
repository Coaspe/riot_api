import 'participant_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'info_dto.g.dart';

@JsonSerializable(createToJson: false)
class InfoDTO {
  const InfoDTO({
    this.endOfGameResult,
    this.gameCreation,
    this.gameId,
    required this.gameDatatime,
    required this.gameLength,
    this.gameVariation,
    required this.gameVersion,
    this.mapId,
    required this.participants,
    required this.queueId,
    this.tftGameType,
    this.tftSetCoreName,
    required this.tftSetNumber,
  });

  final String? endOfGameResult;
  final int? gameCreation;
  final int? gameId;

  /// Unix timestamp.
  @JsonKey(name: "game_datetime")
  final int gameDatatime;
  int get gameDatetime => gameDatatime;

  /// Game legnth in seconds.
  @JsonKey(name: "game_length")
  final double gameLength;

  /// Game variation key. Game variations documented in TFT static data.
  @JsonKey(name: "game_variation")
  final String? gameVariation;

  /// Game client version.
  @JsonKey(name: "game_version")
  final String gameVersion;

  final int? mapId;

  final List<ParticipantDTO> participants;

  /// Please refer to the League of Legends documentation.
  @JsonKey(readValue: _readQueueId)
  final int queueId;

  @JsonKey(name: 'tft_game_type')
  final String? tftGameType;

  @JsonKey(name: 'tft_set_core_name')
  final String? tftSetCoreName;

  /// Teamfight Tactics set number.
  @JsonKey(name: "tft_set_number")
  final int tftSetNumber;
  factory InfoDTO.fromJson(Map<String, dynamic> json) =>
      _$InfoDTOFromJson(json);

  static Object? _readQueueId(Map<dynamic, dynamic> json, String _) =>
      json['queueId'] ?? json['queue_id'];
}
