// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mini_series_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MiniSeriesDTO _$MiniSeriesDTOFromJson(Map<String, dynamic> json) =>
    MiniSeriesDTO(
      losses: (json['losses'] as num?)?.toInt(),
      progress: json['progress'] as String?,
      target: (json['target'] as num?)?.toInt(),
      wins: (json['wins'] as num?)?.toInt(),
    );
