// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'act_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActDTO _$ActDTOFromJson(Map<String, dynamic> json) => ActDTO(
      name: json['name'] as String,
      localizedNames: LocalizedNamesDTO.fromJson(
          json['localizedNames'] as Map<String, dynamic>),
      id: json['id'] as String,
      isActive: json['isActive'] as bool,
      parentId: json['parentId'] as String?,
      type: json['type'] as String?,
    );
