// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spectator_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TftCurrentGameInfo _$TftCurrentGameInfoFromJson(
  Map<String, dynamic> json,
) => TftCurrentGameInfo(
  gameId: (json['gameId'] as num).toInt(),
  gameType: json['gameType'] as String,
  gameStartTime: (json['gameStartTime'] as num).toInt(),
  mapId: (json['mapId'] as num).toInt(),
  gameLength: (json['gameLength'] as num).toInt(),
  platformId: json['platformId'] as String,
  gameMode: json['gameMode'] as String,
  bannedChampions:
      (json['bannedChampions'] as List<dynamic>?)
          ?.map((e) => TftBannedChampion.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  gameQueueConfigId: (json['gameQueueConfigId'] as num).toInt(),
  observers: json['observers'] == null
      ? null
      : TftObserver.fromJson(json['observers'] as Map<String, dynamic>),
  participants: (json['participants'] as List<dynamic>)
      .map((e) => TftCurrentGameParticipant.fromJson(e as Map<String, dynamic>))
      .toList(),
);

TftBannedChampion _$TftBannedChampionFromJson(Map<String, dynamic> json) =>
    TftBannedChampion(
      pickTurn: (json['pickTurn'] as num).toInt(),
      championId: (json['championId'] as num).toInt(),
      teamId: (json['teamId'] as num).toInt(),
    );

TftObserver _$TftObserverFromJson(Map<String, dynamic> json) =>
    TftObserver(encryptionKey: json['encryptionKey'] as String);

TftCurrentGameParticipant _$TftCurrentGameParticipantFromJson(
  Map<String, dynamic> json,
) => TftCurrentGameParticipant(
  championId: (json['championId'] as num).toInt(),
  perks: TftPerks.fromJson(json['perks'] as Map<String, dynamic>),
  profileIconId: (json['profileIconId'] as num).toInt(),
  teamId: (json['teamId'] as num).toInt(),
  puuid: json['puuid'] as String?,
  spell1Id: (json['spell1Id'] as num).toInt(),
  spell2Id: (json['spell2Id'] as num).toInt(),
  gameCustomizationObjects:
      (json['gameCustomizationObjects'] as List<dynamic>?)
          ?.map(
            (e) =>
                TftGameCustomizationObject.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
);

TftPerks _$TftPerksFromJson(Map<String, dynamic> json) => TftPerks(
  perkIds: (json['perkIds'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  perkStyle: (json['perkStyle'] as num).toInt(),
  perkSubStyle: (json['perkSubStyle'] as num).toInt(),
);

TftGameCustomizationObject _$TftGameCustomizationObjectFromJson(
  Map<String, dynamic> json,
) => TftGameCustomizationObject(
  category: json['category'] as String,
  content: json['content'] as String,
);
