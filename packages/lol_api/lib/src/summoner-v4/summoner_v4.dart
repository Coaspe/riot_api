import 'package:riot_api/riot_api.dart';
import 'model/summoner_dto.dart';

class SummonerV4 {
  /// Get a summoner by PUUID
  ///
  /// [rsoPUUID] is a RSO encrypted PUUID
  static Future<SummonerDTO> getSummonerByRSOPUUID(
      RegionValues region, String rsoPUUID,
      {Map<String, String>? headers}) async {
    final url =
        '${region.regionToUrl}/fulfillment/v1/summoners/by-puuid/$rsoPUUID';
    SummonerDTO user =
        await ApiUtil.requestApi(url, SummonerDTO.fromJson, headers);
    return user;
  }

  /// Get a summoner by account ID.
  ///
  /// [encryptedAccountId] is a ID that ACCOUNT-V1 queries provide.
  static Future<SummonerDTO> getSummonerByAccountId(
      RegionValues region, String encryptedAccountId,
      {Map<String, String>? headers}) async {
    final url =
        '${region.regionToUrl}/${Qtype.lol.name}/summoner/v4/summoners/by-account/$encryptedAccountId';
    SummonerDTO user =
        await ApiUtil.requestApi(url, SummonerDTO.fromJson, headers);
    return user;
  }

  /// Get a summoner by summoner name
  static Future<SummonerDTO> getSummonerBySummonerName(
      RegionValues region, String summonerName,
      {Map<String, String>? headers}) async {
    final url =
        '${region.regionToUrl}/${Qtype.lol.name}/summoner/v4/summoners/by-name/$summonerName';
    SummonerDTO user =
        await ApiUtil.requestApi(url, SummonerDTO.fromJson, headers);
    return user;
  }

  /// Get a summoner by PUUID
  static Future<SummonerDTO> getSummonerByPUUId(
      RegionValues region, String encryptedPUUId,
      {Map<String, String>? headers}) async {
    final url =
        '${region.regionToUrl}/${Qtype.lol.name}/summoner/v4/summoners/by-puuid/$encryptedPUUId';
    SummonerDTO user =
        await ApiUtil.requestApi(url, SummonerDTO.fromJson, headers);
    return user;
  }

  /// Get a summoner by access token
  ///
  /// [authorization] is a Bearer token
  static Future<SummonerDTO> getSummonerByAccessToken(
      RegionValues region, String authorization,
      {Map<String, String>? headers}) async {
    headers ??= {};
    headers['Authorization'] = authorization;
    final url =
        '${region.regionToUrl}/${Qtype.lol.name}/summoner/v4/summoners/me';
    SummonerDTO user =
        await ApiUtil.requestApi(url, SummonerDTO.fromJson, headers);
    return user;
  }

  /// Get a summoner by summoner ID.
  static Future<SummonerDTO> getSummonerBySummonerId(
      RegionValues region, String encryptedSummonerId,
      {Map<String, String>? headers}) async {
    final url =
        '${region.regionToUrl}/${Qtype.lol.name}/summoner/v4/summoners/$encryptedSummonerId';
    SummonerDTO user =
        await ApiUtil.requestApi(url, SummonerDTO.fromJson, headers);
    return user;
  }
}
