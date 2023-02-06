import 'package:json_annotation/json_annotation.dart';

part 'participant.g.dart';

@JsonSerializable(createToJson: false)
class Participant {
  const Participant({
    required this.bot,
    required this.spell2Id,
    required this.profileIconId,
    required this.summonerName,
    required this.championId,
    required this.teamId,
    required this.spell1Id,
  });
  final bool bot;
  final int spell2Id;
  final int profileIconId;
  final String summonerName;
  final int championId;
  final int teamId;
  final int spell1Id;

  factory Participant.fromJson(Map<String, dynamic> json) =>
      _$ParticipantFromJson(json);
}
