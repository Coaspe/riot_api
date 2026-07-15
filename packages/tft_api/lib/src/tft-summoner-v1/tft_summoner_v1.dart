import 'package:riot_api/riot_api.dart';
import 'model/summoner_dto.dart';

class TFTSummonerV1 {
  /// Get a summoner by PUUID
  static Future<SummonerDTO> getSummonerByPuuid(
    RegionValues region,
    String puuid, {
    Map<String, String>? headers,
  }) async {
    final url =
        '${region.regionToUrl}/${Qtype.tft.name}/summoner/v1/summoners/by-puuid/${Uri.encodeComponent(puuid)}';
    SummonerDTO summoner = await ApiUtil.requestApi(
      url,
      SummonerDTO.fromJson,
      headers,
    );
    return summoner;
  }

  /// Get summoner by access token
  ///
  /// [authorization] is a Bearer token
  static Future<SummonerDTO> getSummonerByToken(
    RegionValues region,
    String authorization, {
    Map<String, String>? headers,
  }) async {
    final authorizationHeaders = <String, String>{
      ...?headers,
      'Authorization': authorization,
    };
    final url =
        '${region.regionToUrl}/${Qtype.tft.name}/summoner/v1/summoners/me';
    SummonerDTO summoner = await ApiUtil.requestApi(
      url,
      SummonerDTO.fromJson,
      authorizationHeaders,
    );
    return summoner;
  }
}
