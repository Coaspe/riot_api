import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';
import 'package:tft_api/tft_api.dart';

void main() {
  test(
    'match list builds a complete query without concatenation errors',
    () async {
      final client = MockClient((request) async {
        expect(
          request.url.path,
          '/tft/match/v1/matches/by-puuid/player%2Fone/ids',
        );
        expect(request.url.queryParameters, {
          'count': '5',
          'start': '2',
          'startTime': '10',
          'endTime': '20',
        });
        return http.Response(jsonEncode(['KR_1']), 200);
      });
      RiotApi.init(apiKey: 'test-key', client: client);

      final matches = await TFTMatchV1.getMatchListByPuuid(
        PlatformValues.asia,
        'player/one',
        count: 5,
        start: 2,
        startTime: 10,
        endTime: 20,
      );

      expect(matches, ['KR_1']);
    },
  );

  test('TFT summoner uses the current PUUID-only route and schema', () async {
    final client = MockClient((request) async {
      expect(request.url.path, '/tft/summoner/v1/summoners/by-puuid/player');
      return http.Response(
        jsonEncode({
          'puuid': 'player',
          'profileIconId': 1,
          'revisionDate': 2,
          'summonerLevel': 3,
        }),
        200,
      );
    });
    RiotApi.init(apiKey: 'test-key', client: client);

    final summoner = await TFTSummonerV1.getSummonerByPuuid(
      RegionValues.kr,
      'player',
    );

    expect(summoner.puuid, 'player');
  });

  test('invalid match pagination fails before a request', () async {
    RiotApi.init(
      apiKey: 'test-key',
      client: MockClient((_) => fail('network should not be called')),
    );

    await expectLater(
      TFTMatchV1.getMatchListByPuuid(PlatformValues.asia, 'player', count: 0),
      throwsArgumentError,
    );
  });

  test('TFT league includes the current Double Up queue filter', () async {
    final client = MockClient((request) async {
      expect(request.url.path, '/tft/league/v1/challenger');
      expect(request.url.queryParameters, {'queue': 'RANKED_TFT_DOUBLE_UP'});
      return http.Response(
        jsonEncode({
          'leagueId': 'league',
          'entries': <Object>[],
          'tier': 'CHALLENGER',
          'name': 'Double Up',
          'queue': 'RANKED_TFT_DOUBLE_UP',
        }),
        200,
      );
    });
    RiotApi.init(apiKey: 'test-key', client: client);

    final league = await TFTLeagueV1.getChallengerLeague(
      RegionValues.kr,
      queue: TFTLeagueQueue.rankedTftDoubleUp,
    );

    expect(league.queue, 'RANKED_TFT_DOUBLE_UP');
  });

  test('TFT Spectator V5 uses its dedicated PUUID route', () async {
    final client = MockClient((request) async {
      expect(
        request.url.path,
        '/lol/spectator/tft/v5/active-games/by-puuid/player%2Fone',
      );
      return http.Response(
        jsonEncode({
          'gameId': 1,
          'gameType': 'MATCHED_GAME',
          'gameStartTime': 1,
          'mapId': 22,
          'gameLength': 10,
          'platformId': 'KR',
          'gameMode': 'TFT',
          'gameQueueConfigId': 1100,
          'participants': [
            {
              'championId': 1,
              'perks': {
                'perkIds': [1],
                'perkStyle': 2,
                'perkSubStyle': 3,
              },
              'profileIconId': 1,
              'teamId': 100,
              'puuid': null,
              'spell1Id': 4,
              'spell2Id': 14,
            },
          ],
        }),
        200,
      );
    });
    RiotApi.init(apiKey: 'test-key', client: client);

    final game = await TFTSpectatorV5.getCurrentGameInfoByPuuid(
      RegionValues.kr,
      'player/one',
    );

    expect(game.participants.single.puuid, isNull);
  });
}
