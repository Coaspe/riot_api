import 'package:riot_api/riot_api.dart';

import '../val-console-match-v1/val_console_match_v1.dart';
import 'model/console_leaderboard_dto.dart';

class ValConsoleRankedV1 {
  static Future<ConsoleLeaderboardDTO> getLeaderboard(
    ValRegionValues region,
    String actId,
    ValConsolePlatformType platformType, {
    int size = 200,
    int startIndex = 0,
    Map<String, String>? headers,
  }) {
    if (region != ValRegionValues.ap &&
        region != ValRegionValues.eu &&
        region != ValRegionValues.na) {
      throw ArgumentError.value(
        region,
        'region',
        'console ranked supports AP, EU, and NA',
      );
    }
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
    final url = Uri.parse(
      '${region.regionToUrl}/val/console/ranked/v1/leaderboards/by-act/${Uri.encodeComponent(actId)}',
    ).replace(
      queryParameters: {
        'platformType': platformType.name,
        'size': '$size',
        'startIndex': '$startIndex',
      },
    ).toString();
    return ApiUtil.requestApi(url, ConsoleLeaderboardDTO.fromJson, headers);
  }
}
