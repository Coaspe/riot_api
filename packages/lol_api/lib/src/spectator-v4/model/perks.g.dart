// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'perks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Perks _$PerksFromJson(Map<String, dynamic> json) => Perks(
      perkIds: (json['perkIds'] as List<dynamic>).map((e) => e as int).toList(),
      perkStyle: json['perkStyle'] as int,
      perkSubStyle: json['perkSubStyle'] as int,
    );

Map<String, dynamic> _$PerksToJson(Perks instance) => <String, dynamic>{
      'perkIds': instance.perkIds,
      'perkStyle': instance.perkStyle,
      'perkSubStyle': instance.perkSubStyle,
    };
