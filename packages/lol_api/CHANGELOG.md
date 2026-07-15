## 0.2.0

- Add LOL-RSO-MATCH-V1 with OAuth-authenticated match, timeline, and ID lookups.
- Add every TOURNAMENT-V5 and TOURNAMENT-STUB-V5 operation and DTO.
- Update Match V5, timeline, Challenges, League, and routing models to the
  current Riot Developer API schema.
- Add Emerald tier support and tolerate variable-size timeline participant maps.

## 0.1.0

- Require Dart 3.9 and update dependencies to their current releases.
- Migrate Champion Mastery, Clash, League, Spectator, and Summoner APIs to
  their current PUUID-based endpoints.
- Replace Spectator V4 with Spectator V5 and remove the retired featured-games
  endpoint.
- Update Champion Mastery and Summoner response models.
- Fix match timeline parsing and add replay lookup support.
- Replace assertion-only input checks with runtime argument validation.
- Replace live API tests with deterministic HTTP client tests.

## 0.0.1
- Initial

## 0.0.5
- Fix url bug.

## 0.0.6
- Remove private information.

## 0.0.7
- Description changed.

## 0.0.8
- Fix fatal typo.

## 0.0.9
- Get summoner by access token added.
- Remove print funtcion call.
