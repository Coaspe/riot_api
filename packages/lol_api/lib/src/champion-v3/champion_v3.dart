import 'package:riot_api/riot_api.dart';
import 'model/champion_info.dart';

class ChampionV3 {
  /// Returns champion rotations, including free-to-play and low-level free-to-play rotations.
  static Future<ChampionInfo> getChampionRotations(RegionValues region,
      {Map<String, String>? headers}) async {
    final url =
        '${region.regionToUrl}/${Qtype.lol.name}/platform/v3/champion-rotations';
    ChampionInfo gameInfo =
        await ApiUtil.requestApi<ChampionInfo, Map<String, dynamic>>(
            url, ChampionInfo.fromJson, headers);
    return gameInfo;
  }
}
