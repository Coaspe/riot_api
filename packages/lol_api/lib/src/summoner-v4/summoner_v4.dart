import 'package:riot_api/riot_api.dart';
import 'model/summoner_dto.dart';

class SummonerV4 {
  /// Get a summoner by PUUID
  static Future<SummonerDTO> getSummonerByPuuid(
    RegionValues region,
    String puuid, {
    Map<String, String>? headers,
  }) async {
    final url =
        '${region.regionToUrl}/${Qtype.lol.name}/summoner/v4/summoners/by-puuid/${Uri.encodeComponent(puuid)}';
    SummonerDTO user = await ApiUtil.requestApi(
      url,
      SummonerDTO.fromJson,
      headers,
    );
    return user;
  }

  /// Get a summoner by access token
  ///
  /// [authorization] is a Bearer token
  static Future<SummonerDTO> getSummonerByAccessToken(
    RegionValues region,
    String authorization, {
    Map<String, String>? headers,
  }) async {
    final authorizationHeaders = <String, String>{
      ...?headers,
      'Authorization': authorization,
    };
    final url =
        '${region.regionToUrl}/${Qtype.lol.name}/summoner/v4/summoners/me';
    SummonerDTO user = await ApiUtil.requestApi(
      url,
      SummonerDTO.fromJson,
      authorizationHeaders,
    );
    return user;
  }
}
