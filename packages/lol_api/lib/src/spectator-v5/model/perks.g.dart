// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'perks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Perks _$PerksFromJson(Map<String, dynamic> json) => Perks(
  perkIds: (json['perkIds'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  perkStyle: (json['perkStyle'] as num).toInt(),
  perkSubStyle: (json['perkSubStyle'] as num).toInt(),
);
