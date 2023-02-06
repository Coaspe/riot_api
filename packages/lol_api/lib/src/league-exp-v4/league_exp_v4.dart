import 'model/league_entry_dto.dart';
import 'package:riot_api/riot_api.dart';

class LeagueExpV4 {
  static Future<List<LeagueEntryDTO>> getLeagueEntry(RegionValues region,
      {required QueueType queue,
      required Tier tier,
      required Division division,
      int? page,
      Map<String, String>? headers}) async {
    headers ??= {};
    if (page != null) headers['page'] = page.toString();
    final url =
        '${region.regionToUrl}/${Qtype.lol.name}/league-exp/v4/entries/${queue.valueToString}/${tier.name.toUpperCase()}/${division.valueToString}';
    List<LeagueEntryDTO> entry =
        await ApiUtil.requestApi<List<LeagueEntryDTO>, List<dynamic>>(
            url,
            (json) => json
                .map((e) => LeagueEntryDTO.fromJson(e as Map<String, dynamic>))
                .toList(),
            headers);
    return entry;
  }
}
