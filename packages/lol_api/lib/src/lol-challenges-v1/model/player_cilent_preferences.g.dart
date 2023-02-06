// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_cilent_preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerCilentPreferences _$PlayerCilentPreferencesFromJson(
        Map<String, dynamic> json) =>
    PlayerCilentPreferences(
      bannerAccent: json['bannerAccent'] as String,
      title: json['title'] as String,
      challengeIds:
          (json['challengeIds'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$PlayerCilentPreferencesToJson(
        PlayerCilentPreferences instance) =>
    <String, dynamic>{
      'bannerAccent': instance.bannerAccent,
      'title': instance.title,
      'challengeIds': instance.challengeIds,
    };
