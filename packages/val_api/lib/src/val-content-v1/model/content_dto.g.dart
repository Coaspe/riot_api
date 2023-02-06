// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentDTO _$ContentDTOFromJson(Map<String, dynamic> json) => ContentDTO(
      version: json['version'] as String,
      characters: (json['characters'] as List<dynamic>)
          .map((e) => ContentItemDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      maps: (json['maps'] as List<dynamic>)
          .map((e) => ContentItemDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      chromas: (json['chromas'] as List<dynamic>)
          .map((e) => ContentItemDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      skins: (json['skins'] as List<dynamic>)
          .map((e) => ContentItemDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      skinLevels: (json['skinLevels'] as List<dynamic>)
          .map((e) => ContentItemDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      equips: (json['equips'] as List<dynamic>)
          .map((e) => ContentItemDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      gameModes: (json['gameModes'] as List<dynamic>)
          .map((e) => ContentItemDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      sprays: (json['sprays'] as List<dynamic>)
          .map((e) => ContentItemDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      sprayLevels: (json['sprayLevels'] as List<dynamic>)
          .map((e) => ContentItemDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      charms: (json['charms'] as List<dynamic>)
          .map((e) => ContentItemDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      charmLevels: (json['charmLevels'] as List<dynamic>)
          .map((e) => ContentItemDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      playerCards: (json['playerCards'] as List<dynamic>)
          .map((e) => ContentItemDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      playerTitles: (json['playerTitles'] as List<dynamic>)
          .map((e) => ContentItemDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      acts: (json['acts'] as List<dynamic>)
          .map((e) => ActDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      ceremonies: (json['ceremonies'] as List<dynamic>?)
          ?.map((e) => ContentItemDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
