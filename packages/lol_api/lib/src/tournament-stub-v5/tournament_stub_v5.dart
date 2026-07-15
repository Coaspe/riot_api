import 'package:riot_api/riot_api.dart';

import '../tournament-v5/model/tournament_models.dart';
import '../tournament-v5/tournament_api_client.dart';

class TournamentStubV5 {
  static const _api = TournamentApiClient('tournament-stub');

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
