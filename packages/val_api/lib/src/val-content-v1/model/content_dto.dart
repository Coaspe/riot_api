import 'act_dto.dart';
import 'content_item_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'content_dto.g.dart';

@JsonSerializable(createToJson: false)
class ContentDTO {
  const ContentDTO(
      {required this.version,
      required this.characters,
      required this.maps,
      required this.chromas,
      required this.skins,
      required this.skinLevels,
      required this.equips,
      required this.gameModes,
      required this.sprays,
      required this.sprayLevels,
      required this.charms,
      required this.charmLevels,
      required this.playerCards,
      required this.playerTitles,
      required this.acts,
      this.ceremonies});
  final String version;
  final List<ContentItemDTO> characters;
  final List<ContentItemDTO> maps;
  final List<ContentItemDTO> chromas;
  final List<ContentItemDTO> skins;
  final List<ContentItemDTO> skinLevels;
  final List<ContentItemDTO> equips;
  final List<ContentItemDTO> gameModes;
  final List<ContentItemDTO> sprays;
  final List<ContentItemDTO> sprayLevels;
  final List<ContentItemDTO> charms;
  final List<ContentItemDTO> charmLevels;
  final List<ContentItemDTO> playerCards;
  final List<ContentItemDTO> playerTitles;
  final List<ActDTO> acts;
  final List<ContentItemDTO>? ceremonies;

  factory ContentDTO.fromJson(Map<String, dynamic> json) =>
      _$ContentDTOFromJson(json);
}
