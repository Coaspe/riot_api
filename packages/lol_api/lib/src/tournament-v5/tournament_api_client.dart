import 'package:riot_api/riot_api.dart';

import 'model/tournament_models.dart';

class TournamentApiClient {
  const TournamentApiClient(this.apiName);

  final String apiName;

  Future<List<String>> createTournamentCode(
    PlatformValues platform,
    int tournamentId,
    TournamentCodeParametersV5 parameters, {
    int? count,
    Map<String, String>? headers,
  }) {
    if (tournamentId <= 0) {
      throw ArgumentError.value(
        tournamentId,
        'tournamentId',
        'must be positive',
      );
    }
    if (count != null && (count < 1 || count > 1000)) {
      throw ArgumentError.value(count, 'count', 'must be between 1 and 1000');
    }
    if (parameters.teamSize < 1 || parameters.teamSize > 5) {
      throw ArgumentError.value(
        parameters.teamSize,
        'parameters.teamSize',
        'must be between 1 and 5',
      );
    }
    final url = Uri.parse('${platform.platformToUrl}/lol/$apiName/v5/codes')
        .replace(
          queryParameters: {
            'tournamentId': '$tournamentId',
            if (count != null) 'count': '$count',
          },
        )
        .toString();
    return ApiUtil.sendApi<List<String>, List<dynamic>>(
      url,
      (json) => json.cast<String>(),
      method: ApiRequestMethod.post,
      headers: headers,
      body: parameters.toJson(),
    );
  }

  Future<TournamentCodeV5DTO> getTournamentCode(
    PlatformValues platform,
    String tournamentCode, {
    Map<String, String>? headers,
  }) {
    final url =
        '${platform.platformToUrl}/lol/$apiName/v5/codes/${Uri.encodeComponent(tournamentCode)}';
    return ApiUtil.requestApi(url, TournamentCodeV5DTO.fromJson, headers);
  }

  Future<LobbyEventV5DTOWrapper> getLobbyEventsByCode(
    PlatformValues platform,
    String tournamentCode, {
    Map<String, String>? headers,
  }) {
    final url =
        '${platform.platformToUrl}/lol/$apiName/v5/lobby-events/by-code/${Uri.encodeComponent(tournamentCode)}';
    return ApiUtil.requestApi(url, LobbyEventV5DTOWrapper.fromJson, headers);
  }

  Future<int> registerProviderData(
    PlatformValues platform,
    ProviderRegistrationParametersV5 parameters, {
    Map<String, String>? headers,
  }) {
    final url = '${platform.platformToUrl}/lol/$apiName/v5/providers';
    return ApiUtil.sendApi<int, dynamic>(
      url,
      (json) => json as int,
      method: ApiRequestMethod.post,
      headers: headers,
      body: parameters.toJson(),
    );
  }

  Future<int> registerTournament(
    PlatformValues platform,
    TournamentRegistrationParametersV5 parameters, {
    Map<String, String>? headers,
  }) {
    final url = '${platform.platformToUrl}/lol/$apiName/v5/tournaments';
    return ApiUtil.sendApi<int, dynamic>(
      url,
      (json) => json as int,
      method: ApiRequestMethod.post,
      headers: headers,
      body: parameters.toJson(),
    );
  }
}
