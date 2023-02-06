// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentItemDTO _$ContentItemDTOFromJson(Map<String, dynamic> json) =>
    ContentItemDTO(
      name: json['name'] as String,
      localizedNames: LocalizedNamesDTO.fromJson(
          json['localizedNames'] as Map<String, dynamic>),
      id: json['id'] as String,
      assetName: json['assetName'] as String,
      assetPath: json['assetPath'] as String?,
    );
