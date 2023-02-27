import '../riot_api.dart';
import '../utils.dart';
import 'model/account_dto.dart';

class AccountV1 {
  /// Get account by puuid
  static Future<AccountDTO> getAccountByPuuid(
      PlatformValues platform, String puuid,
      {Map<String, String>? headers}) async {
    final url =
        '${platform.platformToUrl}/${Qtype.riot.name}/account/v1/accounts/by-puuid/$puuid';
    AccountDTO user =
        await ApiUtil.requestApi(url, AccountDTO.fromJson, headers);
    return user;
  }

  /// Get account by riot id
  static Future<AccountDTO> getAccountByRiotId(
      PlatformValues platform, String gameName, String tagLine,
      {Map<String, String>? headers}) async {
    final url =
        '${platform.platformToUrl}/${Qtype.riot.name}/account/v1/accounts/by-riot-id/$gameName/$tagLine';
    AccountDTO user =
        await ApiUtil.requestApi(url, AccountDTO.fromJson, headers);
    return user;
  }

  /// Get account by access token
  ///
  /// [authorization] is a Bearer token
  static Future<AccountDTO> getAccountByToken(
      PlatformValues platform, String authorization,
      {Map<String, String>? headers}) async {
    headers ??= {};
    headers['Authorization'] = authorization;
    final url =
        '${platform.platformToUrl}/${Qtype.riot.name}/account/v1/accounts/me';
    AccountDTO user =
        await ApiUtil.requestApi(url, AccountDTO.fromJson, headers);
    return user;
  }

  /// Get active shard for a player.
  static Future<AccountDTO> getActiveShard(
      PlatformValues platform, String game, String puuid,
      {Map<String, String>? headers}) async {
    final url =
        '${platform.platformToUrl}/${Qtype.riot.name}/account/v1/active-shards/by-game/$game/by-puuid/$puuid';
    AccountDTO user =
        await ApiUtil.requestApi(url, AccountDTO.fromJson, headers);
    return user;
  }
}
