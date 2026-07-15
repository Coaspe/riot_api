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
}
