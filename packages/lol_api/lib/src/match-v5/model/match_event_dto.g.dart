// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_event_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchEventDTO _$MatchEventDTOFromJson(Map<String, dynamic> json) =>
    MatchEventDTO(
      realTimestamp: json['realTimestamp'] as int?,
      timestamp: json['timestamp'] as int,
      eventType: $enumDecode(_$TimlineEventTypeEnumMap, json['eventType']),
      itemId: json['itemId'] as int?,
      participantId: json['participantId'] as int?,
      levelUpType: json['levelUpType'] as String?,
      skillSlot: json['skillSlot'] as int?,
      creatorId: json['creatorId'] as int?,
      wardType: json['wardType'] as String?,
      level: json['level'] as int?,
      assistingParticipantIds:
          (json['assistingParticipantIds'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList(),
      bounty: json['bounty'] as int?,
      killStreakLength: json['killStreakLength'] as int?,
      killerId: json['killerId'] as int?,
      position: json['position'] == null
          ? null
          : MatchPositionDTO.fromJson(json['position'] as Map<String, dynamic>),
      victimDamageReceived: (json['victimDamageReceived'] as List<dynamic>?)
          ?.map((e) =>
              MatchTimelineInfoFrameEventVictimDamageReceivedDTO.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      victimDamageDealt: (json['victimDamageDealt'] as List<dynamic>?)
          ?.map((e) =>
              MatchTimelineInfoFrameEventVictimDamageReceivedDTO.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      victimId: json['victimId'] as int?,
      killType: json['killType'] as String?,
      laneType: json['laneType'] as String?,
      teamId: json['teamId'] as int?,
      multiKillLength: json['multiKillLength'] as int?,
      killerTeamId: json['killerTeamId'] as int?,
      monsterType: json['monsterType'] as String?,
      monsterSubType: json['monsterSubType'] as String?,
      buildingType: json['buildingType'] as String?,
      towerType: json['towerType'] as String?,
      afterId: json['afterId'] as int?,
      beforeId: json['beforeId'] as int?,
      goldGain: json['goldGain'] as int?,
      gameId: json['gameId'] as int?,
      winningTeam: json['winningTeam'] as int?,
      transformType: json['transformType'] as String?,
      name: json['name'] as String?,
      shutdownBounty: json['shutdownBounty'] as int?,
      actualStartTime: json['actualStartTime'] as int?,
    );

const _$TimlineEventTypeEnumMap = {
  TimlineEventType.ascendedEvent: 'ASCENDED_EVENT',
  TimlineEventType.buildingKill: 'BUILDING_KILL',
  TimlineEventType.capturePoint: 'CAPTURE_POINT',
  TimlineEventType.championKill: 'CHAMPION_KILL',
  TimlineEventType.championSpecial: 'CHAMPION_SPECIAL_KILL',
  TimlineEventType.championTransform: 'CHAMPION_TRANSFORM',
  TimlineEventType.dragonSoul: 'DRAGON_SOUL_GIVEN',
  TimlineEventType.eliteMonster: 'ELITE_MONSTER_KILL',
  TimlineEventType.gameEnd: 'GAME_END',
  TimlineEventType.itemDestroyed: 'ITEM_DESTROYED',
  TimlineEventType.itemPurchased: 'ITEM_PURCHASED',
  TimlineEventType.itemSold: 'ITEM_SOLD',
  TimlineEventType.itemUndo: 'ITEM_UNDO',
  TimlineEventType.levelUp: 'LEVEL_UP',
  TimlineEventType.pauseEnd: 'PAUSE_END',
  TimlineEventType.pauseStart: 'PAUSE_START',
  TimlineEventType.skillLevel: 'SKILL_LEVEL_UP',
  TimlineEventType.turretPlate: 'TURRET_PLATE_DESTROYED',
  TimlineEventType.wardKill: 'WARD_KILL',
  TimlineEventType.wardPlaced: 'WARD_PLACED',
};
