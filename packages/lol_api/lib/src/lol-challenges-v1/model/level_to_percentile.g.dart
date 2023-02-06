// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'level_to_percentile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LevelToPercentile _$LevelToPercentileFromJson(Map<String, dynamic> json) =>
    LevelToPercentile(
      none: (json['NONE'] as num).toDouble(),
      iron: (json['IRON'] as num).toDouble(),
      bronze: (json['BRONZE'] as num).toDouble(),
      silver: (json['SILVER'] as num).toDouble(),
      gold: (json['GOLD'] as num).toDouble(),
      platinum: (json['PLATINUM'] as num).toDouble(),
      diamond: (json['DIAMOND'] as num).toDouble(),
      master: (json['MASTER'] as num).toDouble(),
      grandmaster: (json['GRANDMASTER'] as num).toDouble(),
      challenger: (json['CHALLENGER'] as num).toDouble(),
    );

Map<String, dynamic> _$LevelToPercentileToJson(LevelToPercentile instance) =>
    <String, dynamic>{
      'NONE': instance.none,
      'IRON': instance.iron,
      'BRONZE': instance.bronze,
      'SILVER': instance.silver,
      'GOLD': instance.gold,
      'PLATINUM': instance.platinum,
      'DIAMOND': instance.diamond,
      'MASTER': instance.master,
      'GRANDMASTER': instance.grandmaster,
      'CHALLENGER': instance.challenger,
    };
