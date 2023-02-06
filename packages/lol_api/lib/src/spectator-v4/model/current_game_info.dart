import 'observer.dart';
import 'banned_champion.dart';
import 'current_game_participant.dart';
import 'package:json_annotation/json_annotation.dart';

part 'current_game_info.g.dart';

@JsonSerializable(createToJson: false)
class CurrentGameInfo {
  const CurrentGameInfo(
      {required this.gameId,
      required this.gameType,
      required this.gameStartTime,
      required this.mapId,
      required this.gameLength,
      required this.platformId,
      required this.gameMode,
      this.bannedChampions = const [],
      required this.gameQueueConfigId,
      this.observers,
      required this.participants});

  final int gameId;
  final String gameType;
  final int gameStartTime;
  final int mapId;
  final int gameLength;
  final String platformId;
  final String gameMode;
  final List<BannedChampion> bannedChampions;
  final int gameQueueConfigId;
  final Observer? observers;
  final List<CurrentGameParticipant> participants;
  factory CurrentGameInfo.fromJson(Map<String, dynamic> json) =>
      _$CurrentGameInfoFromJson(json);
}
