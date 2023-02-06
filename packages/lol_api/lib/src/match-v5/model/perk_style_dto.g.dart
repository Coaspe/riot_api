// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'perk_style_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PerkStyleDTO _$PerkStyleDTOFromJson(Map<String, dynamic> json) => PerkStyleDTO(
      descriptions: json['descriptions'] as String?,
      selections: (json['selections'] as List<dynamic>)
          .map((e) => PerkStyleSelectionDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      style: json['style'] as int,
    );
