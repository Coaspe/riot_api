// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trait_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TraitDTO _$TraitDTOFromJson(Map<String, dynamic> json) => TraitDTO(
  name: json['name'] as String,
  numUnits: (json['num_units'] as num).toInt(),
  style: (json['style'] as num?)?.toInt(),
  tierCurrent: (json['tier_current'] as num).toInt(),
  tierTotal: (json['tier_total'] as num?)?.toInt(),
);
