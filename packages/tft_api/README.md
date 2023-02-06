# tft_api

This package provides an easy way to use the Riot games TFT(Teamfight Tactics) api in Dart language.

You need your own [Riot api key](https://developer.riotgames.com/).

- Teamfight Tactics
    - TFT-LEAGUE-V1
    - TFT-MATCH-V1
    - TFT-STATUS-V1
    - TFT-SUMMONER-V1

## Requirements

Here is what you need to use the Dart SDK:

- Dart 2.19.0 or higher

## Example

First, generate [Riot api key](https://developer.riotgames.com/).

Initialize `RiotApi` with your api key.
```dart
RiotApi.init(apiKey: 'your-api-key'))
```

And use `APIname.queryFunction` form to call query function.

You can check [available api](https://developer.riotgames.com/apis).
```dart
// Get a list of match ids by PUUID.
final match = await TFTMatchV1.getMatchListByPuuid(PlatformValues.asia, puuid, count: 1);

/// Get the challenger league.
final league = await TFTLeagueV1.getChallengerLeague(RegionValues.kr);

// Get the top rated ladder.
final topLadder = await TFTLeagueV1.getTopRatedLadderByQueue(RegionValues.kr, "RANKED_TFT");
```

## Additional packages

We provide other Riot api packages:

- [riot_api](https://pub.dev/packages/riot_api)
- [lol_api](https://pub.dev/packages/lol_api)
- [val_api](https://pub.dev/packages/val_api)
- lor_api (Not supported yet)

## How to Contribute

If you want to contribute to this repository:

- [repo](https://github.com/Coaspe/riot_api/)
