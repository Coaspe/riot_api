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

  test('RSO match lookup uses OAuth without a Riot API key', () async {
    final client = MockClient((request) async {
      expect(request.url.host, 'asia.api.riotgames.com');
      expect(request.url.path, '/lol/rso-match/v1/matches/ids');
      expect(request.url.queryParameters['count'], '5');
      expect(request.headers['Authorization'], 'Bearer player-token');
      expect(
        request.headers.keys.map((key) => key.toLowerCase()),
        isNot(contains('x-riot-token')),
      );
      return http.Response(jsonEncode(['KR_1']), 200);
    });
    RiotApi.init(apiKey: 'test-key', client: client);

    final ids = await LolRsoMatchV1.getMatchIds(
      PlatformValues.asia,
      'Bearer player-token',
      count: 5,
    );

    expect(ids, ['KR_1']);
  });

  test('Tournament V5 sends JSON bodies with regional routing', () async {
    final client = MockClient((request) async {
      expect(request.method, 'POST');
      expect(request.url.host, 'americas.api.riotgames.com');
      expect(request.url.path, '/lol/tournament/v5/codes');
      expect(request.url.queryParameters, {'tournamentId': '42', 'count': '2'});
      expect(request.headers['content-type'], contains('application/json'));
      expect(jsonDecode(request.body), {
        'allowedParticipants': ['player'],
        'metadata': 'final',
        'teamSize': 5,
        'pickType': 'TOURNAMENT_DRAFT',
        'mapType': 'SUMMONERS_RIFT',
        'spectatorType': 'LOBBYONLY',
      });
      return http.Response(jsonEncode(['CODE-1', 'CODE-2']), 201);
    });
    RiotApi.init(apiKey: 'test-key', client: client);

    final codes = await TournamentV5.createTournamentCode(
      PlatformValues.americas,
      42,
      const TournamentCodeParametersV5(
        allowedParticipants: {'player'},
        metadata: 'final',
        teamSize: 5,
        pickType: TournamentPickType.tournamentDraft,
        mapType: TournamentMapType.summonersRift,
        spectatorType: TournamentSpectatorType.lobbyOnly,
      ),
      count: 2,
    );

    expect(codes, ['CODE-1', 'CODE-2']);
  });

  test('Tournament Stub V5 uses the stub provider endpoint', () async {
    final client = MockClient((request) async {
      expect(request.method, 'POST');
      expect(request.url.path, '/lol/tournament-stub/v5/providers');
      expect(jsonDecode(request.body), {
        'region': 'KR',
        'url': 'https://example.com/callback',
      });
      return http.Response('7', 200);
    });
    RiotApi.init(apiKey: 'test-key', client: client);

    final providerId = await TournamentStubV5.registerProviderData(
      PlatformValues.asia,
      const ProviderRegistrationParametersV5(
        region: TournamentProviderRegion.kr,
        url: 'https://example.com/callback',
      ),
    );

    expect(providerId, 7);
  });

  test('Tournament V5 updates codes with PUT', () async {
    final client = MockClient((request) async {
      expect(request.method, 'PUT');
      expect(request.url.path, '/lol/tournament/v5/codes/CODE%2F1');
      expect(jsonDecode(request.body), {'spectatorType': 'ALL'});
      return http.Response(
        jsonEncode([
          {
            'startTime': 1,
            'winningTeam': [
              {'puuid': 'winner'},
            ],
            'losingTeam': [
              {'puuid': 'loser'},
            ],
            'shortCode': 'CODE/1',
            'gameId': 2,
            'gameName': 'Final',
            'gameType': 'CUSTOM_GAME',
            'gameMap': 11,
            'gameMode': 'CLASSIC',
            'region': 'KR',
          },
        ]),
        200,
      );
    });
    RiotApi.init(apiKey: 'test-key', client: client);

    final games = await TournamentV5.updateCode(
      PlatformValues.asia,
      'CODE/1',
      const TournamentCodeUpdateParametersV5(
        spectatorType: TournamentSpectatorType.all,
      ),
    );

    expect(games.single.winningTeam.single.puuid, 'winner');
  });

  test('timeline parses current type and variable participant maps', () async {
    final client = MockClient(
      (_) async => http.Response(
        jsonEncode({
          'metadata': {
            'dataVersion': '2',
            'matchId': 'KR_1',
            'participants': <String>[],
          },
          'info': {
            'endOfGameResult': 'GameComplete',
            'frameInterval': 60000,
            'gameId': 1,
            'participants': <Object>[],
            'frames': [
              {
                'events': [
                  {'timestamp': 1, 'type': 'GAME_END'},
                ],
                'participantFrames': <String, Object>{},
                'timestamp': 1,
              },
            ],
          },
        }),
        200,
      ),
    );
    RiotApi.init(apiKey: 'test-key', client: client);

    final timeline = await MatchV5.getMatchTimelineByMatchId(
      PlatformValues.asia,
      'KR_1',
    );

    expect(timeline.info.endOfGameResult, 'GameComplete');
    expect(
      timeline.info.frames.single.events.single.eventType,
      TimelineEventType.gameEnd,
    );
  });
}
