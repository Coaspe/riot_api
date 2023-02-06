# lol_api_example

First, generate [riot api key](https://developer.riotgames.com/).

Initialize RiotApi class with your api key.
```dart
    RiotApi.init(apiKey: 'your-api-key'))
```

And use `APIname.queryFunction` form to call query function.

You can check [available query](https://pub.dev/packages/lol_api]).
```dart
// Get Summoner by accountId
const accountId = 'your-account-id';
      final summoner =
          await SummonerV4.getSummonerByAccountId(RegionValues.kr, accountId);
```
