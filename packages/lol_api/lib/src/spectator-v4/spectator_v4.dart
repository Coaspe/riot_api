import 'package:riot_api/riot_api.dart';

import 'model/current_game_info.dart';
import 'model/featured_game_info.dart';

class SpectatorV4 {
  /// Get current game information for the given summoner ID.
  static Future<CurrentGameInfo> getCurrentGameInfoBySummonerId(
      RegionValues region, String encryptedSummonerId,
      {Map<String, String>? headers}) async {
    final url =
        '${region.regionToUrl}/${Qtype.lol.name}/spectator/v4/active-games/by-summoner/$encryptedSummonerId';
    CurrentGameInfo gameInfo =
        await ApiUtil.requestApi<CurrentGameInfo, Map<String, dynamic>>(
            url, CurrentGameInfo.fromJson, headers);
    return gameInfo;
  }

  /// Get list of featured games.
  static Future<FeaturedGameInfo> getFeaturedGames(RegionValues region,
      {Map<String, String>? headers}) async {
    final url =
        '${region.regionToUrl}/${Qtype.lol.name}/spectator/v4/featured-games';
    FeaturedGameInfo gameInfo =
        await ApiUtil.requestApi<FeaturedGameInfo, Map<String, dynamic>>(
            url, FeaturedGameInfo.fromJson, headers);
    return gameInfo;
  }
}
