import 'package:json_annotation/json_annotation.dart';

part 'tournament_models.g.dart';

enum TournamentPickType {
  @JsonValue('BLIND_PICK')
  blindPick,
  @JsonValue('DRAFT_MODE')
  draftMode,
  @JsonValue('ALL_RANDOM')
  allRandom,
  @JsonValue('TOURNAMENT_DRAFT')
  tournamentDraft,
}

enum TournamentMapType {
  @JsonValue('SUMMONERS_RIFT')
  summonersRift,
  @JsonValue('HOWLING_ABYSS')
  howlingAbyss,
}

enum TournamentSpectatorType {
  @JsonValue('NONE')
  none,
  @JsonValue('LOBBYONLY')
  lobbyOnly,
  @JsonValue('ALL')
  all,
}

enum TournamentProviderRegion {
  @JsonValue('BR')
  br,
  @JsonValue('EUNE')
  eune,
  @JsonValue('EUW')
  euw,
  @JsonValue('JP')
  jp,
  @JsonValue('LAN')
  lan,
  @JsonValue('LAS')
  las,
  @JsonValue('NA')
  na,
  @JsonValue('OCE')
  oce,
  @JsonValue('PBE')
  pbe,
  @JsonValue('RU')
  ru,
  @JsonValue('TR')
  tr,
  @JsonValue('KR')
  kr,
  @JsonValue('PH')
  ph,
  @JsonValue('SG')
  sg,
  @JsonValue('TH')
  th,
  @JsonValue('TW')
  tw,
  @JsonValue('VN')
  vn,
}

@JsonSerializable(includeIfNull: false)
class TournamentCodeParametersV5 {
  const TournamentCodeParametersV5({
    required this.teamSize,
    required this.pickType,
    required this.mapType,
    required this.spectatorType,
    this.allowedParticipants = const {},
    this.metadata,
    this.enoughPlayers,
  });

  final Set<String> allowedParticipants;
  final String? metadata;
  final int teamSize;
  final TournamentPickType pickType;
  final TournamentMapType mapType;
  final TournamentSpectatorType spectatorType;
  final bool? enoughPlayers;

  factory TournamentCodeParametersV5.fromJson(Map<String, dynamic> json) =>
      _$TournamentCodeParametersV5FromJson(json);

  Map<String, dynamic> toJson() => _$TournamentCodeParametersV5ToJson(this);
}

@JsonSerializable(includeIfNull: false)
class TournamentCodeUpdateParametersV5 {
  const TournamentCodeUpdateParametersV5({
    this.allowedParticipants,
    this.pickType,
    this.mapType,
    this.spectatorType,
  });

  final Set<String>? allowedParticipants;
  final TournamentPickType? pickType;
  final TournamentMapType? mapType;
  final TournamentSpectatorType? spectatorType;

  factory TournamentCodeUpdateParametersV5.fromJson(
    Map<String, dynamic> json,
  ) => _$TournamentCodeUpdateParametersV5FromJson(json);

  Map<String, dynamic> toJson() =>
      _$TournamentCodeUpdateParametersV5ToJson(this);
}

@JsonSerializable(includeIfNull: false)
class ProviderRegistrationParametersV5 {
  const ProviderRegistrationParametersV5({
    required this.region,
    required this.url,
  });

  final TournamentProviderRegion region;
  final String url;

  factory ProviderRegistrationParametersV5.fromJson(
    Map<String, dynamic> json,
  ) => _$ProviderRegistrationParametersV5FromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProviderRegistrationParametersV5ToJson(this);
}

@JsonSerializable(includeIfNull: false)
class TournamentRegistrationParametersV5 {
  const TournamentRegistrationParametersV5({
    required this.providerId,
    this.name,
  });

  final int providerId;
  final String? name;

  factory TournamentRegistrationParametersV5.fromJson(
    Map<String, dynamic> json,
  ) => _$TournamentRegistrationParametersV5FromJson(json);

  Map<String, dynamic> toJson() =>
      _$TournamentRegistrationParametersV5ToJson(this);
}

@JsonSerializable(createToJson: false)
class TournamentCodeV5DTO {
  const TournamentCodeV5DTO({
    required this.id,
    required this.providerId,
    required this.tournamentId,
    required this.code,
    required this.region,
    required this.map,
    required this.teamSize,
    this.spectators,
    required this.pickType,
    required this.lobbyName,
    required this.password,
    this.metaData,
    this.participants = const {},
  });

  final int id;
  final int providerId;
  final int tournamentId;
  final String code;
  final String region;
  final String map;
  final int teamSize;
  final String? spectators;
  final String pickType;
  final String lobbyName;
  final String password;
  final String? metaData;
  final Set<String> participants;

  factory TournamentCodeV5DTO.fromJson(Map<String, dynamic> json) =>
      _$TournamentCodeV5DTOFromJson(json);
}

@JsonSerializable(createToJson: false)
class LobbyEventV5DTOWrapper {
  const LobbyEventV5DTOWrapper({this.eventList = const []});

  final List<LobbyEventV5DTO> eventList;

  factory LobbyEventV5DTOWrapper.fromJson(Map<String, dynamic> json) =>
      _$LobbyEventV5DTOWrapperFromJson(json);
}

@JsonSerializable(createToJson: false)
class LobbyEventV5DTO {
  const LobbyEventV5DTO({
    required this.timestamp,
    required this.eventType,
    this.puuid,
  });

  final String timestamp;
  final String eventType;
  final String? puuid;

  factory LobbyEventV5DTO.fromJson(Map<String, dynamic> json) =>
      _$LobbyEventV5DTOFromJson(json);
}

@JsonSerializable(createToJson: false)
class TournamentGamesV5 {
  const TournamentGamesV5({
    required this.startTime,
    this.winningTeam = const [],
    this.losingTeam = const [],
    required this.shortCode,
    this.metaData,
    required this.gameId,
    required this.gameName,
    required this.gameType,
    required this.gameMap,
    required this.gameMode,
    required this.region,
  });

  final int startTime;
  final List<TournamentTeamV5> winningTeam;
  final List<TournamentTeamV5> losingTeam;
  final String shortCode;
  final String? metaData;
  final int gameId;
  final String gameName;
  final String gameType;
  final int gameMap;
  final String gameMode;
  final String region;

  factory TournamentGamesV5.fromJson(Map<String, dynamic> json) =>
      _$TournamentGamesV5FromJson(json);
}

@JsonSerializable(createToJson: false)
class TournamentTeamV5 {
  const TournamentTeamV5({required this.puuid});

  final String puuid;

  factory TournamentTeamV5.fromJson(Map<String, dynamic> json) =>
      _$TournamentTeamV5FromJson(json);
}
