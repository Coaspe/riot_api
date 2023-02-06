// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateDTO _$UpdateDTOFromJson(Map<String, dynamic> json) => UpdateDTO(
      id: json['id'] as int,
      author: json['author'] as String,
      publish: json['publish'] as bool,
      publishLocations: (json['publish_locations'] as List<dynamic>)
          .map((e) => $enumDecode(_$PublishLocationEnumMap, e))
          .toList(),
      translations: (json['translations'] as List<dynamic>)
          .map((e) => ContentDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

const _$PublishLocationEnumMap = {
  PublishLocation.riotclient: 'riotclient',
  PublishLocation.riotstatus: 'riotstatus',
  PublishLocation.game: 'game',
};
