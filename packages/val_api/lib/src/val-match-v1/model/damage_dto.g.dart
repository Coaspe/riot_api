// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'damage_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DamageDTO _$DamageDTOFromJson(Map<String, dynamic> json) => DamageDTO(
  receiver: json['receiver'] as String,
  damage: (json['damage'] as num).toInt(),
  legshots: (json['legshots'] as num).toInt(),
  bodyshots: (json['bodyshots'] as num).toInt(),
  headshots: (json['headshots'] as num).toInt(),
);
