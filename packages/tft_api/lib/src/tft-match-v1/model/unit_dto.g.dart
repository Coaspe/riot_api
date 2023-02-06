// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnitDTO _$UnitDTOFromJson(Map<String, dynamic> json) => UnitDTO(
      items: (json['items'] as List<dynamic>).map((e) => e as int).toList(),
      characterId: json['character_id'] as String,
      chosen: json['chosen'] as String?,
      name: json['name'] as String,
      rarity: json['rarity'] as int,
      tier: json['tier'] as int,
    );
