// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamDTO _$TeamDTOFromJson(Map<String, dynamic> json) => TeamDTO(
      id: json['id'] as String,
      tournamentId: json['tournamentId'] as String,
      name: json['name'] as String,
      iconId: json['iconId'] as int,
      tier: json['tier'] as int,
      caption: json['caption'] as String?,
      abbreviation: json['abbreviation'] as String?,
      players: (json['players'] as List<dynamic>)
          .map((e) => PlayerDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TeamDTOToJson(TeamDTO instance) => <String, dynamic>{
      'id': instance.id,
      'tournamentId': instance.tournamentId,
      'name': instance.name,
      'iconId': instance.iconId,
      'tier': instance.tier,
      'caption': instance.caption,
      'abbreviation': instance.abbreviation,
      'players': instance.players,
    };
