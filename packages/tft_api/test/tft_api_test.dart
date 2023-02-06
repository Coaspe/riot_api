import 'package:riot_api/riot_api.dart';
import 'package:test/test.dart';
import 'package:tft_api/src/api.dart';
import 'package:tft_api/src/model.dart';

void main() {
  setUp(() => RiotApi.init(apiKey: 'your-api-key'));

  final accountId = "your-accountId";
  final summonerName = 'your-summonerName';
  final puuid = 'your-puuid';
  final summonerId = "your-summonerId";

  group('TFT-MATCH-V1', () {
    test('Get a list of match ids by PUUID', () async {
      final match = await TFTMatchV1.getMatchListByPuuid(
          PlatformValues.asia, puuid,
          count: 1);
      expect(match, isA<List<String>>());
    });
    test('Get a match by match id', () async {
      final matchId = "your-matchId";
      final match = await TFTMatchV1.getMatchByMatchId(
        PlatformValues.asia,
        matchId,
      );
      expect(match, isA<MatchDTO>());
    });
  });
  group('TFT-LEAGUE-V1', () {
    test('Get the challenger league.', () async {
      final league = await TFTLeagueV1.getChallengerLeague(RegionValues.kr);
      expect(league, isA<LeagueListDTO>());
    });

    test('Get the league entries for a given summoner ID', () async {
      final leagueEntries = await TFTLeagueV1.getLeagueEntriesBySummonerId(
          RegionValues.kr, summonerId);
      expect(leagueEntries, isA<List<LeagueEntryDTO>>());
    });

    test('Get the all league entries.', () async {
      final leagueEntries = await TFTLeagueV1.getAllLeagueEntries(
          RegionValues.kr,
          tier: Tier.diamond,
          division: Division.one);

      expect(leagueEntries, isA<List<LeagueEntryDTO>>());
    });

    test('Get the grandmaster league.', () async {
      final league = await TFTLeagueV1.getGrandmasterLeague(RegionValues.kr);
      expect(league, isA<LeagueListDTO>());
    });

    test('Get the master league.', () async {
      final league = await TFTLeagueV1.getMasterLeague(RegionValues.kr);
      expect(league, isA<LeagueListDTO>());
    });

    test('Get the master league.', () async {
      final league = await TFTLeagueV1.getTopRatedLadderByQueue(
          RegionValues.kr, "RANKED_TFT_TURBO");
      expect(league, isA<List<TopRatedLadderEntryDTO>>());
    });

    test('Get the master league queue exception.', () async {
      try {
        await TFTLeagueV1.getTopRatedLadderByQueue(
            RegionValues.kr, "RANKED_TFT");
      } catch (e) {
        expect(e, isA<AssertionError>());
      }
    });
  });
  group('TFT-STATUS-V1', () {
    test('Get Teamfight Tactics status for the given platform.', () async {
      final platformData = await TFTStatusV1.getPlatformData(RegionValues.kr);
      expect(platformData, isA<PlatformDataDTO>());
    });
  });
  group('TFT-SUMMONER-V1', () {
    test('Get a summoner by account ID.', () async {
      final summoner = await TFTSummonerV1.getSummonerByAccountId(
          RegionValues.kr, accountId);
      expect(summoner, isA<SummonerDTO>());
    });
    test('Get a summoner by summoner name.', () async {
      final summoner = await TFTSummonerV1.getSummonerBySummonerName(
          RegionValues.kr, summonerName);
      expect(summoner, isA<SummonerDTO>());
    });
    test('Get a summoner by puuid.', () async {
      final summoner =
          await TFTSummonerV1.getSummonerByPuuid(RegionValues.kr, puuid);
      expect(summoner, isA<SummonerDTO>());
    });
    test('Get a summoner by summoner ID.', () async {
      final summoner = await TFTSummonerV1.getSummonerBySummonerId(
          RegionValues.kr, summonerId);
      expect(summoner, isA<SummonerDTO>());
    });

    /// Not tested yet 😭.
    test('Get a summoner by access token.', () async {
      final summoner = await TFTSummonerV1.getSummonerByAccountId(
          RegionValues.kr, accountId);
      expect(summoner, isA<SummonerDTO>());
    });
  });
}
