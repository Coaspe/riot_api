// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mini_series_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MiniSeriesDTO _$MiniSeriesDTOFromJson(Map<String, dynamic> json) =>
    MiniSeriesDTO(
      losses: json['losses'] as int?,
      progress: json['progress'] as String?,
      target: json['target'] as int?,
      wins: json['wins'] as int?,
    );

Map<String, dynamic> _$MiniSeriesDTOToJson(MiniSeriesDTO instance) =>
    <String, dynamic>{
      'losses': instance.losses,
      'progress': instance.progress,
      'target': instance.target,
      'wins': instance.wins,
    };
