import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:lol_api/lol_api.dart';
import 'package:test/test.dart';

void main() {
  test('match IDs use encoded PUUID and structured query parameters', () async {
    final client = MockClient((request) async {
      expect(
        request.url.path,
        '/lol/match/v5/matches/by-puuid/player%2Fone/ids',
      );
      expect(request.url.queryParameters, {
        'startTime': '10',
        'endTime': '20',
        'type': 'ranked',
        'start': '0',
        'count': '2',
      });
      return http.Response(jsonEncode(['KR_1', 'KR_2']), 200);
    });
    RiotApi.init(apiKey: 'test-key', client: client);

    final ids = await MatchV5.getMatchIdsByPuuid(
      PlatformValues.asia,
      'player/one',
      startTime: 10,
      endTime: 20,
      type: MatchType.ranked,
      count: 2,
    );

    expect(ids, ['KR_1', 'KR_2']);
  });

  test('champion mastery uses the current PUUID route and schema', () async {
    final client = MockClient((request) async {
      expect(request.url.path, contains('/by-puuid/player/by-champion/1'));
      return http.Response(
        jsonEncode({
          'puuid': 'player',
          'championPointsUntilNextLevel': 10,
          'chestGranted': false,
          'championId': 1,
          'lastPlayTime': 1,
          'championLevel': 2,
          'championPoints': 20,
          'championPointsSinceLastLevel': 5,
          'tokensEarned': 0,
          'championSeasonMilestone': 1,
          'milestoneGrades': ['A'],
        }),
        200,
      );
    });
    RiotApi.init(apiKey: 'test-key', client: client);

    final mastery =
        await ChampionMasteryV4.getChampionMasteryByPuuidAndChampionId(
          RegionValues.kr,
          'player',
          1,
        );

    expect(mastery.puuid, 'player');
    expect(mastery.milestoneGrades, ['A']);
  });

  test('Spectator V5 uses PUUID and parses anonymous participants', () async {
    final client = MockClient((request) async {
      expect(
        request.url.path,
        '/lol/spectator/v5/active-games/by-summoner/player',
      );
      return http.Response(
        jsonEncode({
          'gameId': 1,
          'gameType': 'MATCHED_GAME',
          'gameStartTime': 1,
          'mapId': 11,
          'gameLength': 10,
          'platformId': 'KR',
          'gameMode': 'CLASSIC',
          'gameQueueConfigId': 420,
          'participants': [
            {
              'championId': 1,
              'perks': {
                'perkIds': [1],
                'perkStyle': 2,
                'perkSubStyle': 3,
              },
              'profileIconId': 1,
              'bot': false,
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

    final game = await SpectatorV5.getCurrentGameInfoByPuuid(
      RegionValues.kr,
      'player',
    );

    expect(game.participants.single.puuid, isNull);
  });

  test('invalid match ranges fail before a network call', () async {
    RiotApi.init(
      apiKey: 'test-key',
      client: MockClient((_) => fail('network should not be called')),
    );

    await expectLater(
      MatchV5.getMatchIdsByPuuid(
        PlatformValues.asia,
        'player',
        startTime: 20,
        endTime: 10,
      ),
      throwsArgumentError,
    );
  });
}
