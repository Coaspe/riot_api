// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summoner_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SummonerDTO _$SummonerDTOFromJson(Map<String, dynamic> json) => SummonerDTO(
      id: json['id'] as String,
      accountId: json['accountId'] as String,
      puuid: json['puuid'] as String,
      name: json['name'] as String,
      profileIconId: json['profileIconId'] as int,
      revisionDate: json['revisionDate'] as int,
      summonerLevel: json['summonerLevel'] as int,
    );

Map<String, dynamic> _$SummonerDTOToJson(SummonerDTO instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'profileIconId': instance.profileIconId,
      'revisionDate': instance.revisionDate,
      'name': instance.name,
      'id': instance.id,
      'puuid': instance.puuid,
      'summonerLevel': instance.summonerLevel,
    };
