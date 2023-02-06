import 'participant_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'info_dto.g.dart';

@JsonSerializable(createToJson: false)
class InfoDTO {
  const InfoDTO(
      {required this.gameDatatime,
      required this.gameLength,
      this.gameVariation,
      required this.gameVersion,
      required this.participants,
      required this.queueId,
      required this.tftSetNumber});

  /// Unix timestamp.
  @JsonKey(name: "game_datetime")
  final int gameDatatime;

  /// Game legnth in seconds.
  @JsonKey(name: "game_length")
  final double gameLength;

  /// Game variation key. Game variations documented in TFT static data.
  @JsonKey(name: "game_variation")
  final String? gameVariation;

  /// Game client version.
  @JsonKey(name: "game_version")
  final String gameVersion;

  final List<ParticipantDTO> participants;

  /// Please refer to the League of Legends documentation.
  @JsonKey(name: "queue_id")
  final int queueId;

  /// Teamfight Tactics set number.
  @JsonKey(name: "tft_set_number")
  final int tftSetNumber;
  factory InfoDTO.fromJson(Map<String, dynamic> json) =>
      _$InfoDTOFromJson(json);
}
