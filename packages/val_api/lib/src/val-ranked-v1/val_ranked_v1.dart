import 'package:riot_api/riot_api.dart';
import 'package:val_api/src/val-ranked-v1/model/leaderboard_dto.dart';

class ValRankedV1 {
  /// Get leaderboard for the competitive queue
  ///
  /// [size] defaults to 200. Valid values: 1 to 200.
  /// [startIndex] defaults to 0.
  static Future<LeaderboardDTO> getLeaderboard(
      RegionValues region, String actId,
      {int size = 200,
      int startIndex = 0,
      Map<String, String>? headers}) async {
    assert(0 <= size && size <= 200, "'size' must be 0 <= size <= 200");
    String url =
        '${region.regionToUrl}/${Qtype.val.name}/ranked/v1/leaderboards/by-act/$actId?size=$size&startIndex=$startIndex';
    LeaderboardDTO leaderboard =
        await ApiUtil.requestApi(url, LeaderboardDTO.fromJson, headers);
    return leaderboard;
  }
}
