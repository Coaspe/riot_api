// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'economy_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EconomyDTO _$EconomyDTOFromJson(Map<String, dynamic> json) => EconomyDTO(
  loadoutValue: (json['loadoutValue'] as num).toInt(),
  weapon: json['weapon'] as String,
  armor: json['armor'] as String,
  remaining: (json['remaining'] as num).toInt(),
  spent: (json['spent'] as num).toInt(),
);
