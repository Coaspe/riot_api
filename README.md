# riot_api

These packages provide easy ways to use the riot api in Dart language.

- League of Legends api
    - CHAMPION-MASTERY-V4
    - CHAMPION-V3
    - CLASH-V1
    - LEAGUE-EXP-V4
    - LEAGUE-V4
    - LOL-CHALLENGES-V1
    - LOL-STATUS-V4
    - MATCH-V5
    - SPECTATOR-V4
    - SUMMONER-V4
    - TOURNAMENT-V4 (Not yet supported)
    - TOURNAMENT-STUB-V4 (Not yet supported)
- Riot account api
    - ACCOUNT-V1
- Valrorant
    - VAL-CONTENT-V1
    - VAL-MATCH-V1 (Because of policy issue, not tested yet 😭.)
    - VAL-RANKED-V1
    - VAL-STATUS-V1
- Teamfight Tactics
    - TFT-LEAGUE-V1
    - TFT-MATCH-V1
    - TFT-STATUS-V1
    - TFT-SUMMONER-V1
- Legends of Runeterra (Not yet supported)

## Requirements

Here is what you need to use the Dart SDK:

- Dart 2.19.0 or higher

## Exmaple

First, generate [riot api key](https://developer.riotgames.com/).

Initialize `RiotApi` with your api key.
```dart
    RiotApi.init(apiKey: 'your-api-key'))
```
Use `APIname.queryFunction` form to call query function.

You can check [available api](https://developer.riotgames.com/apis).

### riot_api

```dart
const puuid = 'your-puuid';

// Get account information by puuid.
final user = await AccountV1.getAccountByPuuid(PlatformValues.asia, puuid);

// Get account information by gameName and tagLine.
final user2 = await AccountV1.getAccountByRiotId(PlatformValues.asia, gameName, tagLine);
```

### lol_api

You can check [available api](https://developer.riotgames.com/apis).
```dart
const accountId = 'your-account-id';

// Get Summoner by accountId
final summoner =
    await SummonerV4.getSummonerByAccountId(RegionValues.kr, accountId);

// Get Match IDs by puuid
final matchIds = await MatchV5.getMatchIdsByPuuid(
    PlatformValues.asia, puuid,
    count: 1);

// Get Match information by match ID from query above.
final match =
    await MatchV5.getMatchByMatchId(PlatformValues.asia, matchIds[0]);

```
### tft_api

You can check [available api](https://developer.riotgames.com/apis).

```dart
// Get a list of match ids by PUUID.
final match = await TFTMatchV1.getMatchListByPuuid(PlatformValues.asia, puuid, count: 1);

/// Get the challenger league.
final league = await TFTLeagueV1.getChallengerLeague(RegionValues.kr);

// // Get the top rated ladder.
final topLadder = await TFTLeagueV1.getTopRatedLadderByQueue(RegionValues.kr, "RANKED_TFT");
```

### val_api

```dart
const actId = 'your-act-id';

// Get content optionally filtered by locale
final content = await ValContentV1.getContentByLocale(RegionValues.kr);

// Get platform status.
final status = await ValStatusV1.getPlatformStatus(RegionValues.kr);

// Get leaderboard
final board = await ValRankedV1.getLeaderboard(RegionValues.kr, actId, size: 100);
```

## pub.dev
- [riot_api](https://pub.dev/packages/riot_api)
- [lol_api](https://pub.dev/packages/lol_api)
- [val_api](https://pub.dev/packages/val_api)
- [tft_api](https://pub.dev/packages/tft_api)
- [lor_api]() (Not supported yet)

Documentation comment will be added gradually 😀