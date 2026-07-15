// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_game_participant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentGameParticipant _$CurrentGameParticipantFromJson(
  Map<String, dynamic> json,
) => CurrentGameParticipant(
  championId: (json['championId'] as num).toInt(),
  perks: Perks.fromJson(json['perks'] as Map<String, dynamic>),
  profileIconId: (json['profileIconId'] as num).toInt(),
  bot: json['bot'] as bool,
  teamId: (json['teamId'] as num).toInt(),
  puuid: json['puuid'] as String?,
  spell1Id: (json['spell1Id'] as num).toInt(),
  spell2Id: (json['spell2Id'] as num).toInt(),
  gameCustomizationObjects:
      (json['gameCustomizationObjects'] as List<dynamic>?)
          ?.map(
            (e) => GameCustomizationObject.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
);
