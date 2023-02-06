import 'package:lol_api/src/league-v4/league_v4.dart';
import 'package:lol_api/src/lol-challenges-v1/lol_challenges_v1.dart';
import 'package:lol_api/src/lol-status-v4/lol_status_v4.dart';
import 'package:lol_api/src/champion-mastery-v4/champion_mastery_v4.dart';
import 'package:lol_api/src/league-exp-v4/league_exp_v4.dart';
import 'package:lol_api/src/match-v5/match_v5.dart';
import 'package:lol_api/src/spectator-v4/spectator_v4.dart';
import 'package:lol_api/src/summoner-v4/summoner_v4.dart';
import 'package:lol_api/src/clash-v1/clash_v1.dart';
import 'package:lol_api/src/model.dart';
import 'package:test/test.dart';
import 'package:riot_api/riot_api.dart';

void main() async {
  setUp(() {
    RiotApi.init(apiKey: 'RGAPI-f7302155-74f5-4bce-acc6-972b171d1015');
  });

  // Test with your info
  // const puuid = "your-puuid";
  // const id = "your-id";
  // const accountId = "your-accountId";
  // const name = "your-summoner-name";
  // const leagueId = "your-leagueId";
  const puuid =
      "NWiiFjQnBEq3i_w4RsnNWi-WSkTW193dqdmgF-6ZspITEKRxPj6Lbs7ZQnywUoILUaNN8Iwpp2KNJQ";
  const id = "hTyGp_mL1YcVQwH80a3T8g57-ohX1k3tYNQ887VpasR-TA";
  const accountId = "gS4KQBsOIKXG_rc-C1FWPKdEUuXrTovLI4JPEYlP92iM";
  const name = "아스읖";
  const leagueId = "446781dd-2147-3d8a-be18-f9a4f27e87bd";
  group('Match-V5', () {
    test('Get a match by match id.', () async {
      try {
        final matchIds = await MatchV5.getMatchIdsByPuuid(
            PlatformValues.asia, puuid,
            count: 3);
        final match =
            await MatchV5.getMatchByMatchId(PlatformValues.asia, matchIds[0]);
        expect(match, isA<MatchDTO>());
      } catch (e) {
        expect(e, isA<AssertionError>());
      }
    });
    test('Get a list of match ids by puuid.', () async {
      try {
        final matchIds = await MatchV5.getMatchIdsByPuuid(
          PlatformValues.asia,
          puuid,
          count: 0,
          type: MatchType.normal,
        );
        expect(matchIds, isA<List<String>>());
        expect(matchIds, hasLength(0));
      } catch (e) {
        expect(e, isA<AssertionError>());
      }
    });
    test(
        'Get a list of match ids by puuid with startTime greater than endTime.',
        () async {
      try {
        await MatchV5.getMatchIdsByPuuid(
          PlatformValues.asia,
          puuid,
          startTime: 1000,
          endTime: 100,
          type: MatchType.normal,
        );
      } catch (e) {
        expect(e, isA<AssertionError>());
      }
    });
    test('Get a list of match ids by puuid with exceeded count.', () async {
      try {
        await MatchV5.getMatchIdsByPuuid(
          PlatformValues.asia,
          puuid,
          count: 101,
          type: MatchType.normal,
        );
      } catch (e) {
        expect(e, isA<AssertionError>());
      }
    });
  });
  group('League-V4', () {
    test('Get the master league for given queue.', () async {
      final league = await LeagueV4.getMasterLeagueForGivenQueue(
          RegionValues.kr, QueueType.rankedFlexSR);
      expect(league, isA<LeagueListDTO>());
    });
    test('Get league with given Id, including inactive entries.', () async {
      final league =
          await LeagueV4.getLeagueByLeagueId(RegionValues.kr, leagueId);
      expect(league, isA<LeagueListDTO>());
    });
    test('Get all the league entries.', () async {
      final config = await LeagueV4.getGrandmasterSpecificQueue(
          RegionValues.kr, QueueType.rankedFlexSR);
      expect(config, isA<LeagueListDTO>());
    });
    test('Get all the league entries.', () async {
      final config = await LeagueV4.getAllLeageueEntries(RegionValues.kr,
          division: Division.one,
          tier: Tier.bronze,
          queue: QueueType.rankedFlexSR,
          page: 3);
      expect(config, isA<List<LeagueEntryDTO>>());
    });
    test('Get the challenger league for given queue.', () async {
      final config =
          await LeagueV4.getAllLeageueEntriesForSummonerId(RegionValues.kr, id);
      expect(config, isA<List<LeagueEntryDTO>>());
    });
    test('Get the challenger league for given queue.', () async {
      final config = await LeagueV4.getChallengerLeagueForQueue(
          RegionValues.kr, QueueType.rankedSolo_5x5);
      expect(config, isA<LeagueListDTO>());
    });
  });
  group("LOL-CHALLENGES-V1", () {
    test('Get player\'s info with progressed challenge.', () async {
      final config = await LOLChallengesV1.getPlayerInfoWithChallenge(
          RegionValues.kr, puuid);
      expect(config, isA<PlayerInfoDTO>());
    });
    test('Get map of level to percentile of players who have achieved it',
        () async {
      final config =
          await LOLChallengesV1.getMapOfLevelToPercentile(RegionValues.kr, 0);
      expect(config, isA<LevelToPercentile>());
    });
    test('Return top players for each level.', () async {
      final config = await LOLChallengesV1.getTopPlayersOfLevel(
          RegionValues.kr, 0, Level.challenger,
          limit: 1);
      expect(config, isA<List<ApexPlayerInfoDTO>>());
    });
    test('Get challenge configuration', () async {
      final config =
          await LOLChallengesV1.getSingleChallengeConfig(RegionValues.kr, 0);
      expect(config, isA<ChallengeConfigInfoDTO>());
    });
    test(
        'List of all basic challenge configuration information (includes all translations for names and descriptions',
        () async {
      final config =
          await LOLChallengesV1.getAllChallengeConfig(RegionValues.kr);
      expect(config, isA<List<ChallengeConfigInfoDTO>>());
    });
    test('Get percentile', () async {
      final config =
          await LOLChallengesV1.getMapOfLevelToPercentiles(RegionValues.kr);
      expect(config, isA<SerializableMapOfPercentile>());
    });
  });
  group("LOL-STATUS-V4", () {
    test('Get League of Legends status for the given platform', () async {
      final status = await LoLStatusV4.getLOLStatus(RegionValues.kr);
      expect(status, isA<PlatformDataDTO>());
    });
  });
  group("Champion-Mastery-V4", () {
    test(
        'Get all champion mastery entries sorted by number of champion points descending.',
        () async {
      final mastery =
          await ChampionMasteryV4.getAllChampionMastery(RegionValues.kr, id);
      expect(mastery, isA<List<ChampionMasteryDTO>>());
    });

    test('Get a champion mastery by player Id and champion Id.', () async {
      final mastery =
          await ChampionMasteryV4.getChampionMasteryByPlayerIdAndChampionId(
              RegionValues.kr, id, 7);
      expect(mastery, isA<ChampionMasteryDTO>());
    });

    test(
        'Get specified number of top champion mastery entries sorted by number of champion points descending.',
        () async {
      final mastery = await ChampionMasteryV4.getAllChampionMasteryDesc(
          RegionValues.kr, id,
          count: 2);
      expect(mastery, isA<List<ChampionMasteryDTO>>());
    });
    test(
        'Get a player\'s total champion mastery score, which is the sum of individual champion mastery levels.',
        () async {
      final mastery =
          await ChampionMasteryV4.getTotalMasteryScore(RegionValues.kr, id);
      expect(mastery, isA<int>());
    });
  });
  group("Summoner-V4", () {
    test('Summoner-V4 query test - Get a summoner by account Id.', () async {
      const accountId = 'gS4KQBsOIKXG_rc-C1FWPKdEUuXrTovLI4JPEYlP92iM';
      final summoner =
          await SummonerV4.getSummonerByAccountId(RegionValues.kr, accountId);
      expect(summoner, isA<SummonerDTO>());
    });
    test('Summoner-V4 query test - Get a summoner by name.', () async {
      final summoner =
          await SummonerV4.getSummonerBySummonerName(RegionValues.kr, "아스읖");
      expect(summoner, isA<SummonerDTO>());
    });
    test('Summoner-V4 query test - Get a summoner by puuid.', () async {
      final summoner =
          await SummonerV4.getSummonerByPUUId(RegionValues.kr, puuid);
      expect(summoner, isA<SummonerDTO>());
    });
    test('Summoner-V4 query test - Get a summoner by summoner id.', () async {
      final summoner =
          await SummonerV4.getSummonerBySummonerName(RegionValues.kr, "아스읖");
      final user = await SummonerV4.getSummonerBySummonerId(
          RegionValues.kr, summoner.id);
      expect(user, isA<SummonerDTO>());
    });
  });
  group("Spectator-V4", () {
    test(
        'Spectator-V4 query test - Get current game information for the given summoner Id.',
        () async {
      try {
        final user =
            await SummonerV4.getSummonerBySummonerName(RegionValues.kr, "아스읖");
        final featuredGameInfo =
            await SpectatorV4.getCurrentGameInfoBySummonerId(
                RegionValues.kr, user.id);
        expect(featuredGameInfo, isA<CurrentGameInfo>());
      } catch (e) {
        expect(e, isA<Exception>());
      }
    });
    test('Spectator-V4 query test - Get list of featured games.', () async {
      final featuredGameInfo =
          await SpectatorV4.getFeaturedGames(RegionValues.kr);
      expect(featuredGameInfo, isA<FeaturedGameInfo>());
    });
  });
  group("Crash-V1", () {
    test('Get all active or upcoming tournaments.', () async {
      final tournaments =
          await ClashV1.getActiveOrUpcomingTournaments(RegionValues.br1);
      expect(tournaments, isA<List<TournamentDTO?>>());
    });
  });
  group("League-Exp-V4", () {
    test('Get all active or upcoming tournaments.', () async {
      final tournaments = await LeagueExpV4.getLeagueEntry(RegionValues.kr,
          queue: QueueType.rankedSolo_5x5,
          tier: Tier.diamond,
          division: Division.one,
          page: 3);
      expect(tournaments, isA<List<LeagueEntryDTO>>());
    });
  });
}
