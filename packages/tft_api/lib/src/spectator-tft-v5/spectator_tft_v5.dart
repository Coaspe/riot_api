import 'package:riot_api/riot_api.dart';

import 'model/spectator_models.dart';

class TFTSpectatorV5 {
  static Future<TftCurrentGameInfo> getCurrentGameInfoByPuuid(
    RegionValues region,
    String puuid, {
    Map<String, String>? headers,
  }) {
    final url =
        '${region.regionToUrl}/lol/spectator/tft/v5/active-games/by-puuid/${Uri.encodeComponent(puuid)}';
    return ApiUtil.requestApi(url, TftCurrentGameInfo.fromJson, headers);
  }
}
