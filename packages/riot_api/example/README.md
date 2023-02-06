# riot_api_example

First, generate [riot api key](https://developer.riotgames.com/).

Initialize RiotApi class with your api key.
```dart
    RiotApi.init(apiKey: 'your-api-key'))
```

And use `APIname.queryFunction` form to call query function.

You can check [available query](https://pub.dev/packages/riot_api).
```dart
// Get account information by puuid
const puuid = 'your-puuid';
    final user = await AccountV1.getAccountByPuuid(PlatformValues.asia, puuid);
```
