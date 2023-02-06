# lol_api

This package provides an easy way to use the League of Legends api with Dart language.

You need your own [Riot api key](https://developer.riotgames.com/).

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

## Requirements

Here is what you need to use the Dart SDK:

- Dart 2.19.0 or higher

## Example

First, generate [riot api key](https://developer.riotgames.com/).

Initialize `RiotApi` with your api key.
```dart
RiotApi.init(apiKey: 'your-api-key'))
```

And use `APIname.queryFunction` form to call query function.

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

## Additional packages

We provide other Riot api packages:

- [riot_api](https://pub.dev/packages/riot_api)
- val_api (Not supported yet)
- lor_api (Not supported yet)

## How to Contribute

If you want to contribute to this repository:

- [repo](https://github.com/Coaspe/riot_api/)
