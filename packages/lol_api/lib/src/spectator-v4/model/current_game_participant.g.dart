// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_game_participant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentGameParticipant _$CurrentGameParticipantFromJson(
        Map<String, dynamic> json) =>
    CurrentGameParticipant(
      championId: json['championId'] as int,
      perks: Perks.fromJson(json['perks'] as Map<String, dynamic>),
      profileIconId: json['profileIconId'] as int,
      bot: json['bot'] as bool,
      teamId: json['teamId'] as int,
      summonerName: json['summonerName'] as String,
      summonerId: json['summonerId'] as String,
      spell1Id: json['spell1Id'] as int,
      spell2Id: json['spell2Id'] as int,
      gameCustomizationObjects: (json['gameCustomizationObjects']
                  as List<dynamic>?)
              ?.map((e) =>
                  GameCustomizationObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$CurrentGameParticipantToJson(
        CurrentGameParticipant instance) =>
    <String, dynamic>{
      'championId': instance.championId,
      'perks': instance.perks,
      'profileIconId': instance.profileIconId,
      'bot': instance.bot,
      'teamId': instance.teamId,
      'summonerName': instance.summonerName,
      'summonerId': instance.summonerId,
      'spell1Id': instance.spell1Id,
      'spell2Id': instance.spell2Id,
      'gameCustomizationObjects': instance.gameCustomizationObjects,
    };
