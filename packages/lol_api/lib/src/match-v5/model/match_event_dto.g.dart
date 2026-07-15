// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_event_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchEventDTO _$MatchEventDTOFromJson(Map<String, dynamic> json) =>
    MatchEventDTO(
      realTimestamp: (json['realTimestamp'] as num?)?.toInt(),
      timestamp: (json['timestamp'] as num).toInt(),
      eventType: $enumDecode(_$TimlineEventTypeEnumMap, json['eventType']),
      itemId: (json['itemId'] as num?)?.toInt(),
      participantId: (json['participantId'] as num?)?.toInt(),
      levelUpType: json['levelUpType'] as String?,
      skillSlot: (json['skillSlot'] as num?)?.toInt(),
      creatorId: (json['creatorId'] as num?)?.toInt(),
      wardType: json['wardType'] as String?,
      level: (json['level'] as num?)?.toInt(),
      assistingParticipantIds:
          (json['assistingParticipantIds'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList(),
      bounty: (json['bounty'] as num?)?.toInt(),
      killStreakLength: (json['killStreakLength'] as num?)?.toInt(),
      killerId: (json['killerId'] as num?)?.toInt(),
      position: json['position'] == null
          ? null
          : MatchPositionDTO.fromJson(json['position'] as Map<String, dynamic>),
      victimDamageReceived: (json['victimDamageReceived'] as List<dynamic>?)
          ?.map(
            (e) => MatchTimelineInfoFrameEventVictimDamageReceivedDTO.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
      victimDamageDealt: (json['victimDamageDealt'] as List<dynamic>?)
          ?.map(
            (e) => MatchTimelineInfoFrameEventVictimDamageReceivedDTO.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
      victimId: (json['victimId'] as num?)?.toInt(),
      killType: json['killType'] as String?,
      laneType: json['laneType'] as String?,
      teamId: (json['teamId'] as num?)?.toInt(),
      multiKillLength: (json['multiKillLength'] as num?)?.toInt(),
      killerTeamId: (json['killerTeamId'] as num?)?.toInt(),
      monsterType: json['monsterType'] as String?,
      monsterSubType: json['monsterSubType'] as String?,
      buildingType: json['buildingType'] as String?,
      towerType: json['towerType'] as String?,
      afterId: (json['afterId'] as num?)?.toInt(),
      beforeId: (json['beforeId'] as num?)?.toInt(),
      goldGain: (json['goldGain'] as num?)?.toInt(),
      gameId: (json['gameId'] as num?)?.toInt(),
      winningTeam: (json['winningTeam'] as num?)?.toInt(),
      transformType: json['transformType'] as String?,
      name: json['name'] as String?,
      shutdownBounty: (json['shutdownBounty'] as num?)?.toInt(),
      actualStartTime: (json['actualStartTime'] as num?)?.toInt(),
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
