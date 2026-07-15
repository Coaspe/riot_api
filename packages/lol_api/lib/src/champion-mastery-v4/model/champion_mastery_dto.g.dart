// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'champion_mastery_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChampionMasteryDTO _$ChampionMasteryDTOFromJson(
  Map<String, dynamic> json,
) => ChampionMasteryDTO(
  championPointsUntilNextLevel: (json['championPointsUntilNextLevel'] as num)
      .toInt(),
  chestGranted: json['chestGranted'] as bool,
  championId: (json['championId'] as num).toInt(),
  lastPlayTime: (json['lastPlayTime'] as num).toInt(),
  championLevel: (json['championLevel'] as num).toInt(),
  puuid: json['puuid'] as String,
  championPoints: (json['championPoints'] as num).toInt(),
  championPointsSinceLastLevel: (json['championPointsSinceLastLevel'] as num)
      .toInt(),
  tokensEarned: (json['tokensEarned'] as num).toInt(),
  markRequiredForNextLevel: (json['markRequiredForNextLevel'] as num?)?.toInt(),
  championSeasonMilestone: (json['championSeasonMilestone'] as num?)?.toInt(),
  nextSeasonMilestone: json['nextSeasonMilestone'] == null
      ? null
      : NextSeasonMilestonesDTO.fromJson(
          json['nextSeasonMilestone'] as Map<String, dynamic>,
        ),
  milestoneGrades:
      (json['milestoneGrades'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
);
