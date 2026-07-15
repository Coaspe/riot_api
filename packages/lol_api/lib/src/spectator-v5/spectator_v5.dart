import 'package:riot_api/riot_api.dart';

import 'model/current_game_info.dart';

class SpectatorV5 {
  /// Get current game information for the given PUUID.
  static Future<CurrentGameInfo> getCurrentGameInfoByPuuid(
    RegionValues region,
    String puuid, {
    Map<String, String>? headers,
  }) async {
    final url =
        '${region.regionToUrl}/${Qtype.lol.name}/spectator/v5/active-games/by-summoner/${Uri.encodeComponent(puuid)}';
    final gameInfo =
        await ApiUtil.requestApi<CurrentGameInfo, Map<String, dynamic>>(
          url,
          CurrentGameInfo.fromJson,
          headers,
        );
    return gameInfo;
  }
}
