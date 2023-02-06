import 'package:json_annotation/json_annotation.dart';

part 'localized_names_dto.g.dart';

enum Locale {
  arAE,
  deDE,
  enGB,
  enUS,
  esES,
  esMX,
  frFR,
  idID,
  itIT,
  jaJP,
  koKR,
  plPL,
  ptBR,
  ruRU,
  thTH,
  trTR,
  viVN,
  zhCN,
  zhTW,
}

extension LocaleEx on Locale {
  String get valueToString => "${name.substring(0, 2)}-${name.substring(2)}";
}

@JsonSerializable(createToJson: false)
class LocalizedNamesDTO {
  const LocalizedNamesDTO({
    required this.arAE,
    required this.deDE,
    this.enGB,
    required this.enUS,
    required this.esES,
    required this.esMX,
    required this.frFR,
    required this.idID,
    required this.itIT,
    required this.jaJP,
    required this.koKR,
    required this.plPL,
    required this.ptBR,
    required this.ruRU,
    required this.thTH,
    required this.trTR,
    required this.viVN,
    required this.zhCN,
    required this.zhTW,
  });
  @JsonKey(name: 'ar-AE')
  final String arAE;
  @JsonKey(name: 'de-DE')
  final String deDE;
  @JsonKey(name: 'en-GB')
  final String? enGB;
  @JsonKey(name: 'en-US')
  final String enUS;
  @JsonKey(name: 'es-ES')
  final String esES;
  @JsonKey(name: 'es-MX')
  final String esMX;
  @JsonKey(name: 'fr-FR')
  final String frFR;
  @JsonKey(name: 'id-ID')
  final String idID;
  @JsonKey(name: 'it-IT')
  final String itIT;
  @JsonKey(name: 'ja-JP')
  final String jaJP;
  @JsonKey(name: 'ko-KR')
  final String koKR;
  @JsonKey(name: 'pl-PL')
  final String plPL;
  @JsonKey(name: 'pt-BR')
  final String ptBR;
  @JsonKey(name: 'ru-RU')
  final String ruRU;
  @JsonKey(name: 'th-TH')
  final String thTH;
  @JsonKey(name: 'tr-TR')
  final String trTR;
  @JsonKey(name: 'vi-VN')
  final String viVN;
  @JsonKey(name: 'zh-CN')
  final String zhCN;
  @JsonKey(name: 'zh-TW')
  final String zhTW;

  factory LocalizedNamesDTO.fromJson(Map<String, dynamic> json) =>
      _$LocalizedNamesDTOFromJson(json);
}
