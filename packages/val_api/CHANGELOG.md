## 0.2.0

- Add every VAL-CONSOLE-MATCH-V1 operation.
- Add VAL-CONSOLE-RANKED-V1 with PlayStation and Xbox filtering.
- Update VAL match models with current game, Premier, observer, account-level,
  round-role, and queue fields.
- Allow arbitrary locale strings through `ValContentV1.getContent`.

## 0.1.0

- Require Dart 3.9 and update dependencies to their current releases.
- Add the dedicated VALORANT regional routing enum.
- Fix locale query construction and matchlist response parsing.
- Replace assertion-only input checks with runtime argument validation.
- Replace live API tests with deterministic HTTP client tests.

## 0.0.1
- Initial version.

## 0.0.3
- Fix fatal bug with VAL-MATCH-V1
