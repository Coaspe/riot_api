import 'package:riot_api/riot_api.dart';
import 'package:val_api/src/val-content-v1/model/content_dto.dart';
import 'package:val_api/src/val-content-v1/val_content_v1.dart';
import 'package:test/test.dart';
import 'package:val_api/src/val-match-v1/model/matchlist_dto.dart';
import 'package:val_api/src/val-match-v1/val_match_v1.dart';
import 'package:val_api/src/val-ranked-v1/model/leaderboard_dto.dart';
import 'package:val_api/src/val-ranked-v1/val_ranked_v1.dart';
import 'package:val_api/src/val-status-v1/model/platform_data_dto.dart';
import 'package:val_api/src/val-status-v1/val_status_v1.dart';

void main() {
  group('Val-Content-V1', () {
    setUp(() {
      RiotApi.init(apiKey: "your-api-key");
    });

    test('Get content optionally filtered by locale', () async {
      final content = await ValContentV1.getContentByLocale(RegionValues.kr);
      expect(content, isA<ContentDTO>());
    });
  });

  /// Only who has production key can call this query.
  ///
  // /// I can't test this api yet. 😭
  group("Val-Match-V1", () {
    test('Get matches by puuid', () async {
      final content =
          await ValMatchV1.getMatchByPuuid(RegionValues.kr, 'your-puuid');
      expect(content, isA<MatchlistDTO>());
    });
  });

  group('Val-Ranked-V1', () {
    test('Get leaderboard', () async {
      var actId = 'your-actId';
      final board =
          await ValRankedV1.getLeaderboard(RegionValues.kr, actId, size: 100);
      expect(board, isA<LeaderboardDTO>());
    });
  });

  group('Val-Status-V1', () {
    test('Get platform status.', () async {
      final status = await ValStatusV1.getPlatformStatus(RegionValues.kr);
      expect(status, isA<PlatformDataDTO>());
    });
  });
}
