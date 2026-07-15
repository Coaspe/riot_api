import 'package:riot_api/riot_api.dart';

import 'model/tournament_models.dart';
import 'tournament_api_client.dart';

class TournamentV5 {
  static const _api = TournamentApiClient('tournament');

  static Future<List<String>> createTournamentCode(
    PlatformValues platform,
    int tournamentId,
    TournamentCodeParametersV5 parameters, {
    int? count,
    Map<String, String>? headers,
  }) => _api.createTournamentCode(
    platform,
    tournamentId,
    parameters,
    count: count,
    headers: headers,
  );

  static Future<TournamentCodeV5DTO> getTournamentCode(
    PlatformValues platform,
    String tournamentCode, {
    Map<String, String>? headers,
  }) => _api.getTournamentCode(platform, tournamentCode, headers: headers);

  static Future<Set<TournamentGamesV5>> updateCode(
    PlatformValues platform,
    String tournamentCode,
    TournamentCodeUpdateParametersV5 parameters, {
    Map<String, String>? headers,
  }) {
    final url =
        '${platform.platformToUrl}/lol/tournament/v5/codes/${Uri.encodeComponent(tournamentCode)}';
    return ApiUtil.sendApi<Set<TournamentGamesV5>, List<dynamic>>(
      url,
      (json) => json
          .map(
            (game) => TournamentGamesV5.fromJson(game as Map<String, dynamic>),
          )
          .toSet(),
      method: ApiRequestMethod.put,
      headers: headers,
      body: parameters.toJson(),
    );
  }

  static Future<Set<TournamentGamesV5>> getGames(
    PlatformValues platform,
    String tournamentCode, {
    Map<String, String>? headers,
  }) {
    final url =
        '${platform.platformToUrl}/lol/tournament/v5/games/by-code/${Uri.encodeComponent(tournamentCode)}';
    return ApiUtil.requestApi<Set<TournamentGamesV5>, List<dynamic>>(
      url,
      (json) => json
          .map(
            (game) => TournamentGamesV5.fromJson(game as Map<String, dynamic>),
          )
          .toSet(),
      headers,
    );
  }

  static Future<LobbyEventV5DTOWrapper> getLobbyEventsByCode(
    PlatformValues platform,
    String tournamentCode, {
    Map<String, String>? headers,
  }) => _api.getLobbyEventsByCode(platform, tournamentCode, headers: headers);

  static Future<int> registerProviderData(
    PlatformValues platform,
    ProviderRegistrationParametersV5 parameters, {
    Map<String, String>? headers,
  }) => _api.registerProviderData(platform, parameters, headers: headers);

  static Future<int> registerTournament(
    PlatformValues platform,
    TournamentRegistrationParametersV5 parameters, {
    Map<String, String>? headers,
  }) => _api.registerTournament(platform, parameters, headers: headers);
}
