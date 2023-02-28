import 'package:riot_api/riot_api.dart';
import 'package:test/test.dart';

void main() async {
  setUp(() => RiotApi.init(apiKey: 'your-api-key'));
  const gameName = 'you-name';
  const tagLine = "you-tagLine";
  test('Account-V1 query test - Get Account by puuid', () async {
    const puuid = 'your-puuid';
    final user = await AccountV1.getAccountByPuuid(PlatformValues.asia, puuid);
    expect(user, isA<AccountDTO>());
  });
  test('Account-V1 query test - Get Account by riot id', () async {
    final user = await AccountV1.getAccountByRiotId(
        PlatformValues.asia, gameName, tagLine);
    expect(user, isA<AccountDTO>());
  });
  test('Account-V1 query test - Get account by access token', () async {
    final auth = "your-auth";
    final user = await AccountV1.getAccountByToken(PlatformValues.asia, auth);
    expect(user, isA<AccountDTO>());
  });
}
