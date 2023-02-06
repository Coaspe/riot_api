// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'perks_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PerksDTO _$PerksDTOFromJson(Map<String, dynamic> json) => PerksDTO(
      statPerks:
          PerkStatsDTO.fromJson(json['statPerks'] as Map<String, dynamic>),
      styles: (json['styles'] as List<dynamic>)
          .map((e) => PerkStyleDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
