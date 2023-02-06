import 'package:json_annotation/json_annotation.dart';
import 'match_position_dto.dart';
import 'match_timeline_info_frame_event_victim_damage_received_dto.dart';
part 'match_event_dto.g.dart';

enum TimlineEventType {
  @JsonValue('ASCENDED_EVENT')
  ascendedEvent,
  @JsonValue('BUILDING_KILL')
  buildingKill,
  @JsonValue('CAPTURE_POINT')
  capturePoint,
  @JsonValue('CHAMPION_KILL')
  championKill,
  @JsonValue('CHAMPION_SPECIAL_KILL')
  championSpecial,
  @JsonValue('CHAMPION_TRANSFORM')
  championTransform,
  @JsonValue('DRAGON_SOUL_GIVEN')
  dragonSoul,
  @JsonValue('ELITE_MONSTER_KILL')
  eliteMonster,
  @JsonValue('GAME_END')
  gameEnd,
  @JsonValue('ITEM_DESTROYED')
  itemDestroyed,
  @JsonValue('ITEM_PURCHASED')
  itemPurchased,
  @JsonValue('ITEM_SOLD')
  itemSold,
  @JsonValue('ITEM_UNDO')
  itemUndo,
  @JsonValue('LEVEL_UP')
  levelUp,
  @JsonValue('PAUSE_END')
  pauseEnd,
  @JsonValue('PAUSE_START')
  pauseStart,
  @JsonValue('SKILL_LEVEL_UP')
  skillLevel,
  @JsonValue('TURRET_PLATE_DESTROYED')
  turretPlate,
  @JsonValue('WARD_KILL')
  wardKill,
  @JsonValue('WARD_PLACED')
  wardPlaced,
}

@JsonSerializable(createToJson: false)
class MatchEventDTO {
  const MatchEventDTO(
      {this.realTimestamp,
      required this.timestamp,
      required this.eventType,
      this.itemId,
      this.participantId,
      this.levelUpType,
      this.skillSlot,
      this.creatorId,
      this.wardType,
      this.level,
      this.assistingParticipantIds,
      this.bounty,
      this.killStreakLength,
      this.killerId,
      this.position,
      this.victimDamageReceived,
      this.victimDamageDealt,
      this.victimId,
      this.killType,
      this.laneType,
      this.teamId,
      this.multiKillLength,
      this.killerTeamId,
      this.monsterType,
      this.monsterSubType,
      this.buildingType,
      this.towerType,
      this.afterId,
      this.beforeId,
      this.goldGain,
      this.gameId,
      this.winningTeam,
      this.transformType,
      this.name,
      this.shutdownBounty,
      this.actualStartTime});
  final int? realTimestamp;
  final int timestamp;
  final TimlineEventType eventType;
  final int? itemId;
  final int? participantId;
  final String? levelUpType;
  final int? skillSlot;
  final int? creatorId;
  final String? wardType;
  final int? level;
  final List<int>? assistingParticipantIds;
  final int? bounty;
  final int? killStreakLength;
  final int? killerId;
  final MatchPositionDTO? position;
  final List<MatchTimelineInfoFrameEventVictimDamageReceivedDTO>?
      victimDamageDealt;
  final List<MatchTimelineInfoFrameEventVictimDamageReceivedDTO>?
      victimDamageReceived;
  final int? victimId;
  final String? killType;
  final String? laneType;
  final int? teamId;
  final int? multiKillLength;
  final int? killerTeamId;
  final String? monsterType;
  final String? monsterSubType;
  final String? buildingType;
  final String? towerType;
  final int? afterId;
  final int? beforeId;
  final int? goldGain;
  final int? gameId;
  final int? winningTeam;
  final String? transformType;
  final String? name;
  final int? shutdownBounty;
  final int? actualStartTime;
  factory MatchEventDTO.fromJson(Map<String, dynamic> json) =>
      _$MatchEventDTOFromJson(json);
}
