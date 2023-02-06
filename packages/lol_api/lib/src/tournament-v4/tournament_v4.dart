import 'package:lol_api/lol_api.dart';

class TournamentV4 {
  const TournamentV4();

  /// Get a summoner by account ID.
  ///
  /// [encryptedAccountId] is a ID that ACCOUNT-V1 queries provide.
  static Future<List<String>> createTournametCode(
      RegionValues region, String encryptedAccountId,
      {Map<String, String>? headers}) async {
    final url = '${region.regionToUrl}/${Qtype.lol.name}/tournament/v4/codes';
    List<String> user =
        await ApiUtil.requestApi(url, SummonerDTO.fromJson, headers);
    return user;
  }
}
