// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnitDTO _$UnitDTOFromJson(Map<String, dynamic> json) => UnitDTO(
  items: (json['items'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  characterId: json['character_id'] as String,
  itemNames:
      (json['itemNames'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  chosen: json['chosen'] as String?,
  name: json['name'] as String,
  rarity: (json['rarity'] as num).toInt(),
  tier: (json['tier'] as num).toInt(),
);
