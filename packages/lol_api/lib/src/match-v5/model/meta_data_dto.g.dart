// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MetaDataDTO _$MetaDataDTOFromJson(Map<String, dynamic> json) => MetaDataDTO(
      dataVersion: json['dataVersion'] as String?,
      matchId: json['matchId'] as String?,
      participants: (json['participants'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$MetaDataDTOToJson(MetaDataDTO instance) =>
    <String, dynamic>{
      'dataVersion': instance.dataVersion,
      'matchId': instance.matchId,
      'participants': instance.participants,
    };
