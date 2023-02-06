import 'package:riot_api/riot_api.dart';
import 'package:test/test.dart';

void main() async {
  setUp(
      () => RiotApi.init(apiKey: 'RGAPI-04e13cc6-355b-49b2-83e4-be422c601a9b'));
  test('Account-V1 query test - Get Account by puuid', () async {
    const puuid =
        'NWiiFjQnBEq3i_w4RsnNWi-WSkTW193dqdmgF-6ZspITEKRxPj6Lbs7ZQnywUoILUaNN8Iwpp2KNJQ';
    final user = await AccountV1.getAccountByPuuid(PlatformValues.asia, puuid);
    expect(user, isA<AccountDTO>());
  });
  test('Account-V1 query test - Get Account by riot id', () async {
    const gameName = '아스읖';
    const tagLine = "KR1";
    final user = await AccountV1.getAccountByRiotId(
        PlatformValues.asia, gameName, tagLine);
    expect(user, isA<AccountDTO>());
  });
  // test('Account-V1 query test - Get account by access token', () async {
  //   final user = await AccountV1.getAccountByToken(PlatformValues.asia);
  //   expect(user, isA<AccountDTO>());
  // });
}
