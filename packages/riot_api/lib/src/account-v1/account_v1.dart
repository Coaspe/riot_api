import '../riot_api.dart';
import '../utils.dart';
import 'model/account_dto.dart';
import 'model/account_region_dto.dart';
import 'model/active_shard_dto.dart';

class AccountV1 {
  /// Get account by puuid
  static Future<AccountDTO> getAccountByPuuid(
    PlatformValues platform,
    String puuid, {
    Map<String, String>? headers,
  }) async {
    final url =
        '${platform.platformToUrl}/${Qtype.riot.name}/account/v1/accounts/by-puuid/${Uri.encodeComponent(puuid)}';
    AccountDTO user = await ApiUtil.requestApi(
      url,
      AccountDTO.fromJson,
      headers,
    );
    return user;
  }

  /// Get account by riot id
  static Future<AccountDTO> getAccountByRiotId(
    PlatformValues platform,
    String gameName,
    String tagLine, {
    Map<String, String>? headers,
  }) async {
    final url =
        '${platform.platformToUrl}/${Qtype.riot.name}/account/v1/accounts/by-riot-id/${Uri.encodeComponent(gameName)}/${Uri.encodeComponent(tagLine)}';
    AccountDTO user = await ApiUtil.requestApi(
      url,
      AccountDTO.fromJson,
      headers,
    );
    return user;
  }

  /// Get account by access token
  ///
  /// [authorization] is a Bearer token
  static Future<AccountDTO> getAccountByToken(
    PlatformValues platform,
    String authorization, {
    Map<String, String>? headers,
  }) async {
    final authorizationHeaders = <String, String>{
      ...?headers,
      'Authorization': authorization,
    };
    final url =
        '${platform.platformToUrl}/${Qtype.riot.name}/account/v1/accounts/me';
    AccountDTO user = await ApiUtil.requestApi(
      url,
      AccountDTO.fromJson,
      authorizationHeaders,
    );
    return user;
  }

  /// Get active shard for a player.
  static Future<ActiveShardDTO> getActiveShard(
    PlatformValues platform,
    String game,
    String puuid, {
    Map<String, String>? headers,
  }) async {
    final url =
        '${platform.platformToUrl}/${Qtype.riot.name}/account/v1/active-shards/by-game/${Uri.encodeComponent(game)}/by-puuid/${Uri.encodeComponent(puuid)}';
    return ApiUtil.requestApi(url, ActiveShardDTO.fromJson, headers);
  }

  /// Get the active League of Legends or Teamfight Tactics region for a player.
  static Future<AccountRegionDTO> getActiveRegion(
    PlatformValues platform,
    String game,
    String puuid, {
    Map<String, String>? headers,
  }) {
    final url =
        '${platform.platformToUrl}/${Qtype.riot.name}/account/v1/region/by-game/${Uri.encodeComponent(game)}/by-puuid/${Uri.encodeComponent(puuid)}';
    return ApiUtil.requestApi(url, AccountRegionDTO.fromJson, headers);
  }
}
