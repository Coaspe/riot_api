// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountDTO _$AccountDTOFromJson(Map<String, dynamic> json) => AccountDTO(
      puuid: json['puuid'] as String,
      gameName: json['gameName'] as String?,
      tagLine: json['tagLine'] as String?,
    );

Map<String, dynamic> _$AccountDTOToJson(AccountDTO instance) =>
    <String, dynamic>{
      'puuid': instance.puuid,
      'gameName': instance.gameName,
      'tagLine': instance.tagLine,
    };
