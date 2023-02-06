import 'package:json_annotation/json_annotation.dart';

part 'summoner_dto.g.dart';

@JsonSerializable(createToJson: false)
class SummonerDTO {
  const SummonerDTO(
      {required this.id,
      required this.accountId,
      required this.puuid,
      required this.name,
      required this.profileIconId,
      required this.revisionDate,
      required this.summonerLevel});

  /// Encrypted account ID. Max length 56 characters.
  final String accountId;

  /// ID of the summoner icon associated with the summoner.
  final int profileIconId;

  /// Date summoner was last modified specified as epoch milliseconds.
  /// The following events will update this timestamp: summoner name change, summoner level change, or profile icon change.
  final int revisionDate;

  /// Summoner name.
  final String name;

  ///	Encrypted summoner ID. Max length 63 characters.
  final String id;

  ///	Encrypted PUUID. Exact length of 78 characters.
  final String puuid;

  ///	Summoner level associated with the summoner.
  final int summonerLevel;

  factory SummonerDTO.fromJson(Map<String, dynamic> json) =>
      _$SummonerDTOFromJson(json);
}
