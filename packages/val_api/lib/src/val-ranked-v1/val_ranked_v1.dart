import 'package:riot_api/riot_api.dart';
import 'package:val_api/src/val-ranked-v1/model/leaderboard_dto.dart';

class ValRankedV1 {
  /// Get leaderboard for the competitive queue
  ///
  /// [size] defaults to 200. Valid values: 1 to 200.
  /// [startIndex] defaults to 0.
  static Future<LeaderboardDTO> getLeaderboard(
    ValRegionValues region,
    String actId, {
    int size = 200,
    int startIndex = 0,
    Map<String, String>? headers,
  }) async {
    if (size < 1 || size > 200) {
      throw ArgumentError.value(size, 'size', 'must be between 1 and 200');
    }
    if (startIndex < 0) {
      throw ArgumentError.value(
        startIndex,
        'startIndex',
        'must be non-negative',
      );
    }
    final url =
        Uri.parse(
              '${region.regionToUrl}/${Qtype.val.name}/ranked/v1/leaderboards/by-act/${Uri.encodeComponent(actId)}',
            )
            .replace(
              queryParameters: {'size': '$size', 'startIndex': '$startIndex'},
            )
            .toString();
    LeaderboardDTO leaderboard = await ApiUtil.requestApi(
      url,
      LeaderboardDTO.fromJson,
      headers,
    );
    return leaderboard;
  }
}
