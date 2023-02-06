import 'package:riot_api/riot_api.dart';
import 'model/platform_data_dto.dart';

class ValStatusV1 {
  /// Get VALORANT status for the given platform.
  static Future<PlatformDataDTO> getPlatformStatus(RegionValues region,
      {Map<String, String>? headers}) async {
    String url =
        '${region.regionToUrl}/${Qtype.val.name}/status/v1/platform-data';
    PlatformDataDTO leaderboard =
        await ApiUtil.requestApi(url, PlatformDataDTO.fromJson, headers);
    return leaderboard;
  }
}
