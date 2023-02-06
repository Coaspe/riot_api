import 'package:json_annotation/json_annotation.dart';

part 'account_dto.g.dart';

@JsonSerializable(createToJson: false)
class AccountDTO {
  const AccountDTO({required this.puuid, this.gameName, this.tagLine});

  final String puuid;
  final String? gameName;
  final String? tagLine;

  factory AccountDTO.fromJson(Map<String, dynamic> json) =>
      _$AccountDTOFromJson(json);
}
