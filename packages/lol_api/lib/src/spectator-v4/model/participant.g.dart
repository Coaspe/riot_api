// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Participant _$ParticipantFromJson(Map<String, dynamic> json) => Participant(
      bot: json['bot'] as bool,
      spell2Id: json['spell2Id'] as int,
      profileIconId: json['profileIconId'] as int,
      summonerName: json['summonerName'] as String,
      championId: json['championId'] as int,
      teamId: json['teamId'] as int,
      spell1Id: json['spell1Id'] as int,
    );

Map<String, dynamic> _$ParticipantToJson(Participant instance) =>
    <String, dynamic>{
      'bot': instance.bot,
      'spell2Id': instance.spell2Id,
      'profileIconId': instance.profileIconId,
      'summonerName': instance.summonerName,
      'championId': instance.championId,
      'teamId': instance.teamId,
      'spell1Id': instance.spell1Id,
    };
