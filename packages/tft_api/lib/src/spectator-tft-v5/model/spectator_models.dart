import 'package:json_annotation/json_annotation.dart';

part 'spectator_models.g.dart';

@JsonSerializable(createToJson: false)
class TftCurrentGameInfo {
  const TftCurrentGameInfo({
    required this.gameId,
    required this.gameType,
    required this.gameStartTime,
    required this.mapId,
    required this.gameLength,
    required this.platformId,
    required this.gameMode,
    this.bannedChampions = const [],
    required this.gameQueueConfigId,
    this.observers,
    required this.participants,
  });

  final int gameId;
  final String gameType;
  final int gameStartTime;
  final int mapId;
  final int gameLength;
  final String platformId;
  final String gameMode;
  final List<TftBannedChampion> bannedChampions;
  final int gameQueueConfigId;
  final TftObserver? observers;
  final List<TftCurrentGameParticipant> participants;

  factory TftCurrentGameInfo.fromJson(Map<String, dynamic> json) =>
      _$TftCurrentGameInfoFromJson(json);
}

@JsonSerializable(createToJson: false)
class TftBannedChampion {
  const TftBannedChampion({
    required this.pickTurn,
    required this.championId,
    required this.teamId,
  });

  final int pickTurn;
  final int championId;
  final int teamId;

  factory TftBannedChampion.fromJson(Map<String, dynamic> json) =>
      _$TftBannedChampionFromJson(json);
}

@JsonSerializable(createToJson: false)
class TftObserver {
  const TftObserver({required this.encryptionKey});

  final String encryptionKey;

  factory TftObserver.fromJson(Map<String, dynamic> json) =>
      _$TftObserverFromJson(json);
}

@JsonSerializable(createToJson: false)
class TftCurrentGameParticipant {
  const TftCurrentGameParticipant({
    required this.championId,
    required this.perks,
    required this.profileIconId,
    required this.teamId,
    this.puuid,
    required this.spell1Id,
    required this.spell2Id,
    this.gameCustomizationObjects = const [],
  });

  final int championId;
  final TftPerks perks;
  final int profileIconId;
  final int teamId;
  final String? puuid;
  final int spell1Id;
  final int spell2Id;
  final List<TftGameCustomizationObject> gameCustomizationObjects;

  factory TftCurrentGameParticipant.fromJson(Map<String, dynamic> json) =>
      _$TftCurrentGameParticipantFromJson(json);
}

@JsonSerializable(createToJson: false)
class TftPerks {
  const TftPerks({
    required this.perkIds,
    required this.perkStyle,
    required this.perkSubStyle,
  });

  final List<int> perkIds;
  final int perkStyle;
  final int perkSubStyle;

  factory TftPerks.fromJson(Map<String, dynamic> json) =>
      _$TftPerksFromJson(json);
}

@JsonSerializable(createToJson: false)
class TftGameCustomizationObject {
  const TftGameCustomizationObject({
    required this.category,
    required this.content,
  });

  final String category;
  final String content;

  factory TftGameCustomizationObject.fromJson(Map<String, dynamic> json) =>
      _$TftGameCustomizationObjectFromJson(json);
}
