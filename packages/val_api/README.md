# val_api

This package provides an easy way to use the Riot games Valorant api in Dart language.

You need your own [Riot api key](https://developer.riotgames.com/).

- Valorant api
    - VAL-CONTENT-V1
    - VAL-MATCH-V1 (Because of policy issue, not tested yet 😭.)
    - VAL-RANKED-V1
    - VAL-STATUS-V1

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

// Get content optionally filtered by locale
final content = await ValContentV1.getContentByLocale(RegionValues.kr);

// Get platform status.
final status = await ValStatusV1.getPlatformStatus(RegionValues.kr);

// Get leaderboard
final board = await ValRankedV1.getLeaderboard(RegionValues.kr, actId, size: 100);
```

## Additional packages

We provide other Riot api packages:

- [riot_api](https://pub.dev/packages/riot_api) (Riot account api)
- [lol_api](https://pub.dev/packages/lol_api) (League of Legends api)
- tft_api (Not supported yet)
- lor_api (Not supported yet)

## How to Contribute

If you want to contribute to this repository:

- [repo](https://github.com/Coaspe/riot_api/)
