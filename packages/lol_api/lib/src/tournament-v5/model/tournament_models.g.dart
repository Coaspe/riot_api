// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournament_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TournamentCodeParametersV5 _$TournamentCodeParametersV5FromJson(
  Map<String, dynamic> json,
) => TournamentCodeParametersV5(
  teamSize: (json['teamSize'] as num).toInt(),
  pickType: $enumDecode(_$TournamentPickTypeEnumMap, json['pickType']),
  mapType: $enumDecode(_$TournamentMapTypeEnumMap, json['mapType']),
  spectatorType: $enumDecode(
    _$TournamentSpectatorTypeEnumMap,
    json['spectatorType'],
  ),
  allowedParticipants:
      (json['allowedParticipants'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toSet() ??
      const {},
  metadata: json['metadata'] as String?,
  enoughPlayers: json['enoughPlayers'] as bool?,
);

Map<String, dynamic> _$TournamentCodeParametersV5ToJson(
  TournamentCodeParametersV5 instance,
) => <String, dynamic>{
  'allowedParticipants': instance.allowedParticipants.toList(),
  'metadata': ?instance.metadata,
  'teamSize': instance.teamSize,
  'pickType': _$TournamentPickTypeEnumMap[instance.pickType]!,
  'mapType': _$TournamentMapTypeEnumMap[instance.mapType]!,
  'spectatorType': _$TournamentSpectatorTypeEnumMap[instance.spectatorType]!,
  'enoughPlayers': ?instance.enoughPlayers,
};

const _$TournamentPickTypeEnumMap = {
  TournamentPickType.blindPick: 'BLIND_PICK',
  TournamentPickType.draftMode: 'DRAFT_MODE',
  TournamentPickType.allRandom: 'ALL_RANDOM',
  TournamentPickType.tournamentDraft: 'TOURNAMENT_DRAFT',
};

const _$TournamentMapTypeEnumMap = {
  TournamentMapType.summonersRift: 'SUMMONERS_RIFT',
  TournamentMapType.howlingAbyss: 'HOWLING_ABYSS',
};

const _$TournamentSpectatorTypeEnumMap = {
  TournamentSpectatorType.none: 'NONE',
  TournamentSpectatorType.lobbyOnly: 'LOBBYONLY',
  TournamentSpectatorType.all: 'ALL',
};

TournamentCodeUpdateParametersV5 _$TournamentCodeUpdateParametersV5FromJson(
  Map<String, dynamic> json,
) => TournamentCodeUpdateParametersV5(
  allowedParticipants: (json['allowedParticipants'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toSet(),
  pickType: $enumDecodeNullable(_$TournamentPickTypeEnumMap, json['pickType']),
  mapType: $enumDecodeNullable(_$TournamentMapTypeEnumMap, json['mapType']),
  spectatorType: $enumDecodeNullable(
    _$TournamentSpectatorTypeEnumMap,
    json['spectatorType'],
  ),
);

Map<String, dynamic> _$TournamentCodeUpdateParametersV5ToJson(
  TournamentCodeUpdateParametersV5 instance,
) => <String, dynamic>{
  'allowedParticipants': ?instance.allowedParticipants?.toList(),
  'pickType': ?_$TournamentPickTypeEnumMap[instance.pickType],
  'mapType': ?_$TournamentMapTypeEnumMap[instance.mapType],
  'spectatorType': ?_$TournamentSpectatorTypeEnumMap[instance.spectatorType],
};

ProviderRegistrationParametersV5 _$ProviderRegistrationParametersV5FromJson(
  Map<String, dynamic> json,
) => ProviderRegistrationParametersV5(
  region: $enumDecode(_$TournamentProviderRegionEnumMap, json['region']),
  url: json['url'] as String,
);

Map<String, dynamic> _$ProviderRegistrationParametersV5ToJson(
  ProviderRegistrationParametersV5 instance,
) => <String, dynamic>{
  'region': _$TournamentProviderRegionEnumMap[instance.region]!,
  'url': instance.url,
};

const _$TournamentProviderRegionEnumMap = {
  TournamentProviderRegion.br: 'BR',
  TournamentProviderRegion.eune: 'EUNE',
  TournamentProviderRegion.euw: 'EUW',
  TournamentProviderRegion.jp: 'JP',
  TournamentProviderRegion.lan: 'LAN',
  TournamentProviderRegion.las: 'LAS',
  TournamentProviderRegion.na: 'NA',
  TournamentProviderRegion.oce: 'OCE',
  TournamentProviderRegion.pbe: 'PBE',
  TournamentProviderRegion.ru: 'RU',
  TournamentProviderRegion.tr: 'TR',
  TournamentProviderRegion.kr: 'KR',
  TournamentProviderRegion.ph: 'PH',
  TournamentProviderRegion.sg: 'SG',
  TournamentProviderRegion.th: 'TH',
  TournamentProviderRegion.tw: 'TW',
  TournamentProviderRegion.vn: 'VN',
};

TournamentRegistrationParametersV5 _$TournamentRegistrationParametersV5FromJson(
  Map<String, dynamic> json,
) => TournamentRegistrationParametersV5(
  providerId: (json['providerId'] as num).toInt(),
  name: json['name'] as String?,
);

Map<String, dynamic> _$TournamentRegistrationParametersV5ToJson(
  TournamentRegistrationParametersV5 instance,
) => <String, dynamic>{
  'providerId': instance.providerId,
  'name': ?instance.name,
};

TournamentCodeV5DTO _$TournamentCodeV5DTOFromJson(Map<String, dynamic> json) =>
    TournamentCodeV5DTO(
      id: (json['id'] as num).toInt(),
      providerId: (json['providerId'] as num).toInt(),
      tournamentId: (json['tournamentId'] as num).toInt(),
      code: json['code'] as String,
      region: json['region'] as String,
      map: json['map'] as String,
      teamSize: (json['teamSize'] as num).toInt(),
      spectators: json['spectators'] as String?,
      pickType: json['pickType'] as String,
      lobbyName: json['lobbyName'] as String,
      password: json['password'] as String,
      metaData: json['metaData'] as String?,
      participants:
          (json['participants'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toSet() ??
          const {},
    );

LobbyEventV5DTOWrapper _$LobbyEventV5DTOWrapperFromJson(
  Map<String, dynamic> json,
) => LobbyEventV5DTOWrapper(
  eventList:
      (json['eventList'] as List<dynamic>?)
          ?.map((e) => LobbyEventV5DTO.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

LobbyEventV5DTO _$LobbyEventV5DTOFromJson(Map<String, dynamic> json) =>
    LobbyEventV5DTO(
      timestamp: json['timestamp'] as String,
      eventType: json['eventType'] as String,
      puuid: json['puuid'] as String?,
    );

TournamentGamesV5 _$TournamentGamesV5FromJson(Map<String, dynamic> json) =>
    TournamentGamesV5(
      startTime: (json['startTime'] as num).toInt(),
      winningTeam:
          (json['winningTeam'] as List<dynamic>?)
              ?.map((e) => TournamentTeamV5.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      losingTeam:
          (json['losingTeam'] as List<dynamic>?)
              ?.map((e) => TournamentTeamV5.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      shortCode: json['shortCode'] as String,
      metaData: json['metaData'] as String?,
      gameId: (json['gameId'] as num).toInt(),
      gameName: json['gameName'] as String,
      gameType: json['gameType'] as String,
      gameMap: (json['gameMap'] as num).toInt(),
      gameMode: json['gameMode'] as String,
      region: json['region'] as String,
    );

TournamentTeamV5 _$TournamentTeamV5FromJson(Map<String, dynamic> json) =>
    TournamentTeamV5(puuid: json['puuid'] as String);
