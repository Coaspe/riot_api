import 'package:lol_api/src/spectator-v4/model/banned_champion.dart';
import 'package:lol_api/src/spectator-v4/model/observer.dart';

import 'participant.dart';
import 'package:json_annotation/json_annotation.dart';

part 'featured_game_info.g.dart';

@JsonSerializable(createToJson: false)
class FeaturedGameInfo {
  const FeaturedGameInfo(
      {required this.gameMode,
      required this.gameLength,
      required this.mapId,
      required this.gameType,
      required this.bannedChampion,
      required this.gameId,
      required this.observer,
      required this.gameQueueConfigId,
      required this.gameStartTime,
      required this.participants});
  final String? gameMode;
  final int? gameLength;
  final int? mapId;
  final String? gameType;
  final List<BannedChampion>? bannedChampion;
  final int? gameId;
  final Observer? observer;
  final int? gameQueueConfigId;
  final int? gameStartTime;
  final List<Participant>? participants;

  factory FeaturedGameInfo.fromJson(Map<String, dynamic> json) =>
      _$FeaturedGameInfoFromJson(json);
}
