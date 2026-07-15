import 'package:http/http.dart' as http;

enum PlatformValues { americas, asia, esports, esportseu, europe, sea }

enum RegionValues {
  br1,
  eun1,
  euw1,
  jp1,
  kr,
  la1,
  la2,
  me1,
  na1,
  oc1,
  pbe1,
  sg2,
  tr1,
  ru,
  tw2,
  vn2,
}

enum ValRegionValues { ap, br, esports, eu, kr, latam, na }

enum Qtype { lol, val, lor, riot, tft }

extension PlatformValuesEx on PlatformValues {
  String get platformToUrl => "https://$name.api.riotgames.com";
}

extension RegionValuesEx on RegionValues {
  String get regionToUrl => "https://$name.api.riotgames.com";
}

extension ValRegionValuesEx on ValRegionValues {
  String get regionToUrl => "https://$name.api.riotgames.com";
}

/// Singleton class for Riot API key.
class RiotApi {
  RiotApi._();
  static final RiotApi _instance = RiotApi._();
  factory RiotApi() => _instance;

  static String? apiKey;

  static http.Client _client = http.Client();
  static http.Client get client => _client;

  static void init({String? apiKey, http.Client? client}) {
    RiotApi.apiKey = apiKey;
    if (client != null) {
      _client = client;
    }
  }

  static void close() => _client.close();
}
