enum PlatformValues { americas, asia, esports, europe }

enum RegionValues {
  br1,
  eun1,
  euw1,
  jp1,
  kr,
  la1,
  la2,
  na1,
  oc1,
  tr1,
  ru,
  ph2,
  th2,
  tw2,
  vn2
}

enum Qtype { lol, val, lor, riot, tft }

extension PlatformValuesEx on PlatformValues {
  String get platformToUrl => "https://$name.api.riotgames.com";
}

extension RegionValuesEx on RegionValues {
  String get regionToUrl => "https://$name.api.riotgames.com";
}

/// Singleton class for Riot API key.
class RiotApi {
  RiotApi._();
  static final RiotApi _instance = RiotApi._();
  factory RiotApi() => _instance;

  static String? _apiKey;
  static String? get apiKey => _apiKey;
  static set apiKey(newKey) => newKey;

  static void init({required String apiKey}) {
    _apiKey = apiKey;
  }
}
