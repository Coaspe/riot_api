# riot_api

This package provides an easy way to use commthe riot api that League of Legends,
Valrorant and Legends of Luneterra have in common in Dart language.

If you want League of Legends api package visit here.

- Riot account api
    - ACCOUNT-V1

## Requirements

Here are what you need to use the Dart SDK:

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
const puuid = 'your-puuid';

// Get account information by puuid.
final user = await AccountV1.getAccountByPuuid(PlatformValues.asia, puuid);

// Get account information by gameName and tagLine.
final user2 = await AccountV1.getAccountByRiotId(PlatformValues.asia, gameName, tagLine);
```

## Additional packages

We provide other Riot api packages:

- [lol_api](https://pub.dev/packages/lol_api)
- val_api (Not supported yet)
- lor_api (Not supported yet)

## How to Contribute

If you want to contribute to this repository:

- [repo](https://github.com/Coaspe/riot_api)