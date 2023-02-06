import 'perks_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'participant_dto.g.dart';

@JsonSerializable(createToJson: false)
class ParticipantDTO {
  const ParticipantDTO({
    required this.assists,
    required this.baronKills,
    required this.bountyLevel,
    required this.champExperience,
    required this.champLevel,
    required this.championId,
    required this.championName,
    required this.championTransform,
    required this.consumablesPurchased,
    required this.damageDealtToBuildings,
    required this.damageDealtToObjectives,
    required this.damageDealtToTurrets,
    required this.damageSelfMitigated,
    required this.deaths,
    required this.detectorWardsPlaced,
    required this.doubleKills,
    required this.dragonKills,
    required this.firstBloodAssist,
    required this.firstBloodKill,
    required this.firstTowerAssist,
    required this.firstTowerKill,
    required this.gameEndedInEarlySurrender,
    required this.gameEndedInSurrender,
    required this.goldEarned,
    required this.goldSpent,
    required this.individualPosition,
    required this.inhibitorKills,
    required this.inhibitorTakedowns,
    required this.inhibitorsLost,
    required this.item0,
    required this.item1,
    required this.item2,
    required this.item3,
    required this.item4,
    required this.item5,
    required this.item6,
    required this.itemsPurchased,
    required this.killingSprees,
    required this.kills,
    required this.lane,
    required this.largestCriticalStrike,
    required this.largestKillingSpree,
    required this.largestMultiKill,
    required this.longestTimeSpentLiving,
    required this.magicDamageDealt,
    required this.magicDamageDealtToChampions,
    required this.magicDamageTaken,
    required this.neutralMinionsKilled,
    required this.nexusKills,
    required this.nexusTakedowns,
    required this.nexusLost,
    required this.objectivesStolen,
    required this.objectivesStolenAssists,
    required this.participantId,
    required this.pentaKills,
    required this.perks,
    required this.physicalDamageDealt,
    required this.physicalDamageDealtToChampions,
    required this.physicalDamageTaken,
    required this.profileIcon,
    required this.puuid,
    required this.quadraKills,
    required this.riotIdName,
    required this.riotIdTagline,
    required this.role,
    required this.sightWardsBoughtInGame,
    required this.spell1Casts,
    required this.spell2Casts,
    required this.spell3Casts,
    required this.spell4Casts,
    required this.summoner1Casts,
    required this.summoner1Id,
    required this.summoner2Casts,
    required this.summoner2Id,
    required this.summonerId,
    required this.summonerLevel,
    required this.summonerName,
    required this.teamEarlySurrendered,
    required this.teamId,
    required this.teamPosition,
    required this.timeCCingOthers,
    required this.timePlayed,
    required this.totalDamageDealt,
    required this.totalDamageDealtToChampions,
    required this.totalDamageShieldedOnTeammates,
    required this.totalDamageTaken,
    required this.totalHeal,
    required this.totalHealsOnTeammates,
    required this.totalMinionsKilled,
    required this.totalTimeCCDealt,
    required this.totalTimeSpentDead,
    required this.totalUnitsHealed,
    required this.tripleKills,
    required this.trueDamageDealt,
    required this.trueDamageDealtToChampions,
    required this.trueDamageTaken,
    required this.turretKills,
    required this.turretTakedowns,
    required this.turretsLost,
    required this.unrealKills,
    required this.visionScore,
    required this.visionWardsBoughtInGame,
    required this.wardsKilled,
    required this.wardsPlaced,
    required this.win,
  });
  final int assists;
  final int baronKills;
  final int bountyLevel;
  final int champExperience;
  final int champLevel;

  /// Prior to patch 11.4, on Feb 18th, 2021, this field returned invalid championIds.
  ///
  /// We recommend determining the champion based on the championName field for matches played prior to patch 11.4.
  final int championId;
  final String? championName;

  /// This field is currently only utilized for Kayn's transformations.
  ///
  /// (Legal values: 0 - None, 1 - Slayer, 2 - Assassin)
  final int championTransform;
  final int consumablesPurchased;
  final int damageDealtToBuildings;
  final int damageDealtToObjectives;
  final int damageDealtToTurrets;
  final int damageSelfMitigated;
  final int deaths;
  final int detectorWardsPlaced;
  final int doubleKills;
  final int dragonKills;
  final bool firstBloodAssist;
  final bool firstBloodKill;
  final bool firstTowerAssist;
  final bool firstTowerKill;
  final bool gameEndedInEarlySurrender;
  final bool gameEndedInSurrender;
  final int goldEarned;
  final int goldSpent;

  /// The individualPosition is the best guess for which position the player actually played in isolation of anything else.
  ///
  /// Both individualPosition and teamPosition are computed by the game server and are different versions of the most likely position played by a player.
  /// The teamPosition is the best guess for which position the player actually played if we add the constraint that each team must have one top player, one jungle, one middle, etc.
  /// Generally the recommendation is to use the teamPosition field over the individualPosition field.
  final String? individualPosition;
  final int inhibitorKills;
  final int inhibitorTakedowns;
  final int inhibitorsLost;
  final int item0;
  final int item1;
  final int item2;
  final int item3;
  final int item4;
  final int item5;
  final int item6;

  final int itemsPurchased;
  final int killingSprees;
  final int kills;
  final String? lane;
  final int largestCriticalStrike;
  final int largestKillingSpree;
  final int largestMultiKill;
  final int longestTimeSpentLiving;
  final int magicDamageDealt;
  final int magicDamageDealtToChampions;
  final int magicDamageTaken;
  final int neutralMinionsKilled;
  final int nexusKills;
  final int nexusTakedowns;
  final int nexusLost;
  final int objectivesStolen;
  final int objectivesStolenAssists;
  final int participantId;
  final int pentaKills;
  final PerksDTO perks;
  final int physicalDamageDealt;
  final int physicalDamageDealtToChampions;
  final int physicalDamageTaken;
  final int profileIcon;
  final String? puuid;
  final int quadraKills;
  final String? riotIdName;
  final String? riotIdTagline;
  final String? role;
  final int sightWardsBoughtInGame;
  final int spell1Casts;
  final int spell2Casts;
  final int spell3Casts;
  final int spell4Casts;
  final int summoner1Casts;
  final int summoner1Id;
  final int summoner2Casts;
  final int summoner2Id;
  final String? summonerId;
  final int summonerLevel;
  final String? summonerName;
  final bool teamEarlySurrendered;
  final int teamId;

  /// The teamPosition is the best guess for which position the player actually played if we add the constraint that each team must have one top player, one jungle, one middle, etc.
  ///
  /// Generally the recommendation is to use the teamPosition field over the individualPosition field.
  /// Both individualPosition and teamPosition are computed by the game server and are different versions of the most likely position played by a player.
  /// The individualPosition is the best guess for which position the player actually played in isolation of anything else.
  final String? teamPosition;
  final int timeCCingOthers;
  final int timePlayed;
  final int totalDamageDealt;
  final int totalDamageDealtToChampions;
  final int totalDamageShieldedOnTeammates;
  final int totalDamageTaken;
  final int totalHeal;
  final int totalHealsOnTeammates;
  final int totalMinionsKilled;
  final int totalTimeCCDealt;
  final int totalTimeSpentDead;
  final int totalUnitsHealed;
  final int tripleKills;
  final int trueDamageDealt;
  final int trueDamageDealtToChampions;
  final int trueDamageTaken;
  final int turretKills;
  final int turretTakedowns;
  final int turretsLost;
  final int unrealKills;
  final int visionScore;
  final int visionWardsBoughtInGame;
  final int wardsKilled;
  final int wardsPlaced;
  final bool win;

  factory ParticipantDTO.fromJson(Map<String, dynamic> json) =>
      _$ParticipantDTOFromJson(json);
}
