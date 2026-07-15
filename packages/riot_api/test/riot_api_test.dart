import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:riot_api/riot_api.dart';
import 'package:test/test.dart';

void main() {
  test(
    'account lookup encodes path values and sends the Riot API key',
    () async {
      final client = MockClient((request) async {
        expect(request.url.host, 'asia.api.riotgames.com');
        expect(
          request.url.path,
          '/riot/account/v1/accounts/by-riot-id/Game%2FName/KR%201',
        );
        expect(request.headers['X-Riot-Token'], 'test-key');
        return http.Response(
          jsonEncode({
            'puuid': 'player',
            'gameName': 'Game/Name',
            'tagLine': 'KR 1',
          }),
          200,
        );
      });
      RiotApi.init(apiKey: 'test-key', client: client);

      final account = await AccountV1.getAccountByRiotId(
        PlatformValues.asia,
        'Game/Name',
        'KR 1',
      );

      expect(account.puuid, 'player');
    },
  );

  test('OAuth lookup does not also send the Riot API key', () async {
    final client = MockClient((request) async {
      expect(request.headers['Authorization'], 'Bearer token');
      expect(
        request.headers.keys.map((key) => key.toLowerCase()),
        isNot(contains('x-riot-token')),
      );
      return http.Response(jsonEncode({'puuid': 'player'}), 200);
    });
    RiotApi.init(apiKey: 'test-key', client: client);

    final account = await AccountV1.getAccountByToken(
      PlatformValues.asia,
      'Bearer token',
    );

    expect(account.puuid, 'player');
  });

  test('active shard and region use their current response models', () async {
    final client = MockClient((request) async {
      if (request.url.path.contains('active-shards')) {
        return http.Response(
          jsonEncode({'puuid': 'player', 'game': 'val', 'activeShard': 'ap'}),
          200,
        );
      }
      return http.Response(
        jsonEncode({'puuid': 'player', 'game': 'lol', 'region': 'kr'}),
        200,
      );
    });
    RiotApi.init(apiKey: 'test-key', client: client);

    final shard = await AccountV1.getActiveShard(
      PlatformValues.asia,
      'val',
      'player',
    );
    final region = await AccountV1.getActiveRegion(
      PlatformValues.asia,
      'lol',
      'player',
    );

    expect(shard.activeShard, 'ap');
    expect(region.region, 'kr');
  });

  test('non-success responses expose status, body, and URI', () async {
    final client = MockClient(
      (_) async => http.Response('{"status":"forbidden"}', 403),
    );
    RiotApi.init(apiKey: 'test-key', client: client);

    await expectLater(
      AccountV1.getAccountByPuuid(PlatformValues.asia, 'player'),
      throwsA(
        isA<RiotApiException>()
            .having((error) => error.statusCode, 'statusCode', 403)
            .having((error) => error.body, 'body', contains('forbidden')),
      ),
    );
  });
}
