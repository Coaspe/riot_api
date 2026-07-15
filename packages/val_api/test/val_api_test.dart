import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';
import 'package:val_api/val_api.dart';

void main() {
  test(
    'match list uses VAL regional routing and the Matchlist parser',
    () async {
      final client = MockClient((request) async {
        expect(request.url.host, 'ap.api.riotgames.com');
        expect(request.url.path, '/val/match/v1/matchlists/by-puuid/player');
        return http.Response(
          jsonEncode({
            'puuid': 'player',
            'history': [
              {
                'matchId': 'match-1',
                'gameStartTimeMillis': 1,
                'queueId': 'competitive',
              },
            ],
          }),
          200,
        );
      });
      RiotApi.init(apiKey: 'test-key', client: client);

      final matches = await ValMatchV1.getMatchByPuuid(
        ValRegionValues.ap,
        'player',
      );

      expect(matches.history.single.matchId, 'match-1');
    },
  );

  test('content locale is sent with the locale query key', () async {
    final client = MockClient((request) async {
      expect(request.url.host, 'kr.api.riotgames.com');
      expect(request.url.queryParameters, {'locale': 'ko-KR'});
      return http.Response(
        jsonEncode({
          'version': '1',
          'characters': [],
          'maps': [],
          'chromas': [],
          'skins': [],
          'skinLevels': [],
          'equips': [],
          'gameModes': [],
          'sprays': [],
          'sprayLevels': [],
          'charms': [],
          'charmLevels': [],
          'playerCards': [],
          'playerTitles': [],
          'acts': [],
          'ceremonies': [],
        }),
        200,
      );
    });
    RiotApi.init(apiKey: 'test-key', client: client);

    final content = await ValContentV1.getContentByLocale(
      ValRegionValues.kr,
      locale: Locale.koKR,
    );

    expect(content.version, '1');
  });

  test('leaderboard validates the documented size range', () async {
    RiotApi.init(
      apiKey: 'test-key',
      client: MockClient((_) => fail('network should not be called')),
    );

    await expectLater(
      ValRankedV1.getLeaderboard(ValRegionValues.kr, 'act', size: 0),
      throwsArgumentError,
    );
  });

  test('console matchlist sends the required platform type', () async {
    final client = MockClient((request) async {
      expect(
        request.url.path,
        '/val/match/console/v1/matchlists/by-puuid/player%2Fone',
      );
      expect(request.url.queryParameters, {'platformType': 'playstation'});
      return http.Response(
        jsonEncode({'puuid': 'player/one', 'history': <Object>[]}),
        200,
      );
    });
    RiotApi.init(apiKey: 'test-key', client: client);

    final matches = await ValConsoleMatchV1.getMatchlistByPuuid(
      ValRegionValues.ap,
      'player/one',
      ValConsolePlatformType.playstation,
    );

    expect(matches.puuid, 'player/one');
  });

  test('console ranked uses its console route and DTO', () async {
    final client = MockClient((request) async {
      expect(
        request.url.path,
        '/val/console/ranked/v1/leaderboards/by-act/act%2Fone',
      );
      expect(request.url.queryParameters['platformType'], 'xbox');
      return http.Response(
        jsonEncode({
          'actId': 'act/one',
          'totalPlayers': 1,
          'query': '',
          'shard': 'ap',
          'players': [
            {'leaderboardRank': 1, 'rankedRating': 500, 'numberOfWins': 10},
          ],
          'tierDetails': <Object>[],
        }),
        200,
      );
    });
    RiotApi.init(apiKey: 'test-key', client: client);

    final leaderboard = await ValConsoleRankedV1.getLeaderboard(
      ValRegionValues.ap,
      'act/one',
      ValConsolePlatformType.xbox,
    );

    expect(leaderboard.players.single.rankedRating, 500);
  });
}
