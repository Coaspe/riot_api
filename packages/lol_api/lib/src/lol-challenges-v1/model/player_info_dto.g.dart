// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerInfoDTO _$PlayerInfoDTOFromJson(Map<String, dynamic> json) =>
    PlayerInfoDTO(
      challenges: (json['challenges'] as List<dynamic>)
          .map((e) => ChallengeInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      preferences: PlayerCilentPreferences.fromJson(
          json['preferences'] as Map<String, dynamic>),
      totalPoints:
          ChallengePoints.fromJson(json['totalPoints'] as Map<String, dynamic>),
      categoryPoints: (json['categoryPoints'] as Map<String, dynamic>).map(
        (k, e) => MapEntry($enumDecode(_$CategoryEnumMap, k),
            ChallengePoints.fromJson(e as Map<String, dynamic>)),
      ),
    );

const _$CategoryEnumMap = {
  Category.expertise: 'EXPERTISE',
  Category.teamwork: 'TEAMWORK',
  Category.imagination: 'IMAGINATION',
  Category.collection: 'COLLECTION',
  Category.veterancy: 'VETERANCY',
};
