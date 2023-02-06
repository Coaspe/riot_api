// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'objectives_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ObjectivesDTO _$ObjectivesDTOFromJson(Map<String, dynamic> json) =>
    ObjectivesDTO(
      baron: ObjectiveDTO.fromJson(json['baron'] as Map<String, dynamic>),
      champion: ObjectiveDTO.fromJson(json['champion'] as Map<String, dynamic>),
      dragon: ObjectiveDTO.fromJson(json['dragon'] as Map<String, dynamic>),
      inhibitor:
          ObjectiveDTO.fromJson(json['inhibitor'] as Map<String, dynamic>),
      riftHerald:
          ObjectiveDTO.fromJson(json['riftHerald'] as Map<String, dynamic>),
      tower: ObjectiveDTO.fromJson(json['tower'] as Map<String, dynamic>),
    );
