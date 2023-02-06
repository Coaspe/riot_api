// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'damage_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DamageDTO _$DamageDTOFromJson(Map<String, dynamic> json) => DamageDTO(
      receiver: json['receiver'] as String,
      damage: json['damage'] as int,
      legshots: json['legshots'] as int,
      bodyshots: json['bodyshots'] as int,
      headshots: json['headshots'] as int,
    );
