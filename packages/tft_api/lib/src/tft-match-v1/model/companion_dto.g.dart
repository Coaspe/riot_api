// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'companion_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanionDTO _$CompanionDTOFromJson(Map<String, dynamic> json) => CompanionDTO(
  skinId: (json['skin_ID'] as num).toInt(),
  contentId: json['content_ID'] as String,
  itemId: (json['item_ID'] as num?)?.toInt(),
  species: json['species'] as String,
);
