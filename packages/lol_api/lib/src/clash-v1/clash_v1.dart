import 'model/player_dto.dart';
import 'model/team_dto.dart';
import 'model/tournament_dto.dart';
import 'package:riot_api/riot_api.dart';

class ClashV1 {
  /// Get players by summoner ID.
  static Future<List<PlayerDTO>> getPlayersBySummonerId(
      RegionValues region, String summonerId,
      {Map<String, String>? headers}) async {
    final url =
        '${region.regionToUrl}/${Qtype.lol.name}/clash/v1/players/by-summoner/$summonerId';

    final plyaers = await ApiUtil.requestApi<List<PlayerDTO>, List<dynamic>>(
        url,
        (json) => json
            .map((e) => PlayerDTO.fromJson(e as Map<String, dynamic>))
            .toList(),
        headers);
    return plyaers;
  }

  /// Get team by ID
  static Future<TeamDTO> getTeamById(RegionValues region, String teamId,
      {Map<String, String>? headers}) async {
    final url =
        '${region.regionToUrl}/${Qtype.lol.name}/clash/v1/teams/$teamId';

    TeamDTO team = await ApiUtil.requestApi(url, TeamDTO.fromJson, headers);
    return team;
  }

  /// Returns a list of active and upcoming tournaments.
  static Future<List<TournamentDTO>> getActiveOrUpcomingTournaments(
      RegionValues region,
      {Map<String, String>? headers}) async {
    final url = '${region.regionToUrl}/${Qtype.lol.name}/clash/v1/tournaments';

    final team = await ApiUtil.requestApi<List<TournamentDTO>, List<dynamic>>(
        url,
        (json) => json
            .map((e) => TournamentDTO.fromJson(e as Map<String, dynamic>))
            .toList(),
        headers);
    return team;
  }

  /// Get tournament by team ID
  static Future<TournamentDTO> getTournametByTeamId(
      RegionValues region, String teamId,
      {Map<String, String>? headers}) async {
    final url =
        '${region.regionToUrl}/${Qtype.lol.name}/clash/v1/tournaments/by-team/$teamId';

    TournamentDTO tournament =
        await ApiUtil.requestApi(url, TournamentDTO.fromJson, headers);
    return tournament;
  }

  /// Get tournament by ID.
  static Future<TournamentDTO> getTournametById(
      RegionValues region, String tournamentId,
      {Map<String, String>? headers}) async {
    final url =
        '${region.regionToUrl}/${Qtype.lol.name}/clash/v1/tournaments/$tournamentId';

    TournamentDTO tournament =
        await ApiUtil.requestApi(url, TournamentDTO.fromJson, headers);
    return tournament;
  }
}
