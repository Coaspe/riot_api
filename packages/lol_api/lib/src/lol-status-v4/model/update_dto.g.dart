// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateDTO _$UpdateDTOFromJson(Map<String, dynamic> json) => UpdateDTO(
      id: json['id'] as int,
      author: json['author'] as String,
      publish: json['publish'] as bool,
      publishLocations: (json['publishLocations'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      translations: (json['translations'] as List<dynamic>?)
          ?.map((e) => ContentDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );
