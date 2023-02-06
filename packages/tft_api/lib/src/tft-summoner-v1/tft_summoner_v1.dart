import 'package:riot_api/riot_api.dart';
import 'model/summoner_dto.dart';

class TFTSummonerV1 {
  /// Get a summoner by account ID.
  static Future<SummonerDTO> getSummonerByAccountId(
      RegionValues region, String encryptedAccountId,
      {Map<String, String>? headers}) async {
    String url =
        '${region.regionToUrl}/${Qtype.tft.name}/summoner/v1/summoners/by-account/$encryptedAccountId';
    SummonerDTO summoner =
        await ApiUtil.requestApi(url, SummonerDTO.fromJson, headers);
    return summoner;
  }

  /// Get a summoner by summoner name
  static Future<SummonerDTO> getSummonerBySummonerName(
      RegionValues region, String summonerName,
      {Map<String, String>? headers}) async {
    final url =
        '${region.regionToUrl}/${Qtype.tft.name}/summoner/v1/summoners/by-name/$summonerName';
    SummonerDTO summoner =
        await ApiUtil.requestApi(url, SummonerDTO.fromJson, headers);
    return summoner;
  }

  /// Get a summoner by PUUID
  static Future<SummonerDTO> getSummonerByPuuid(
      RegionValues region, String encryptedPUUId,
      {Map<String, String>? headers}) async {
    final url =
        '${region.regionToUrl}/${Qtype.tft.name}/summoner/v1/summoners/by-puuid/$encryptedPUUId';
    SummonerDTO summoner =
        await ApiUtil.requestApi(url, SummonerDTO.fromJson, headers);
    return summoner;
  }

  /// Get summoner by access token
  ///
  /// [authorization] is a Bearer token
  static Future<SummonerDTO> getSummonerByToken(
      RegionValues region, String authorization,
      {Map<String, String>? headers}) async {
    headers ??= {};
    headers['Authorization'] = authorization;
    final url =
        '${region.regionToUrl}/${Qtype.tft.name}/summoner/v1/summoners/me';
    SummonerDTO summoner =
        await ApiUtil.requestApi(url, SummonerDTO.fromJson, headers);
    return summoner;
  }

  /// Get a summoner by summoner ID.
  static Future<SummonerDTO> getSummonerBySummonerId(
      RegionValues region, String encryptedSummonerId,
      {Map<String, String>? headers}) async {
    final url =
        '${region.regionToUrl}/${Qtype.tft.name}/summoner/v1/summoners/$encryptedSummonerId';
    SummonerDTO summoner =
        await ApiUtil.requestApi(url, SummonerDTO.fromJson, headers);
    return summoner;
  }
}
