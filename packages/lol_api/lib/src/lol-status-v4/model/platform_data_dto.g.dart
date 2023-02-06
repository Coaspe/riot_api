// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlatformDataDTO _$PlatformDataDTOFromJson(Map<String, dynamic> json) =>
    PlatformDataDTO(
      id: json['id'] as String,
      name: json['name'] as String,
      locales:
          (json['locales'] as List<dynamic>?)?.map((e) => e as String).toList(),
      maintenances: (json['maintenances'] as List<dynamic>?)
          ?.map((e) => StatusDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      incidents: (json['incidents'] as List<dynamic>?)
          ?.map((e) => StatusDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
