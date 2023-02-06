// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ban_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BanDTO _$BanDTOFromJson(Map<String, dynamic> json) => BanDTO(
      championId: json['championId'] as int,
      pickTurn: json['pickTurn'] as int,
    );

Map<String, dynamic> _$BanDTOToJson(BanDTO instance) => <String, dynamic>{
      'championId': instance.championId,
      'pickTurn': instance.pickTurn,
    };
