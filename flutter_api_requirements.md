# Flutter API requirements

- Do not use deprecated Flutter or Dart APIs when a supported replacement is
  available.
- Use `Color.withValues(...)` instead of deprecated
  `Color.withOpacity(...)`.
- Await futures that belong to the current operation. For deliberate
  fire-and-forget work, use `unawaited` and handle failures where appropriate.
- Do not use `BuildContext` across async gaps. Move the effect to a listener or
  check `mounted` before accessing context.
- Use a `RadioGroup` ancestor instead of deprecated `Radio.groupValue` and
  `Radio.onChanged` APIs on Flutter versions where `RadioGroup` is available.
- Use `SizeTransition.alignment` instead of deprecated `axisAlignment`.
- Dispose controllers, focus nodes, animation controllers, timers, stream
  subscriptions, and HTTP resources owned by a widget or controller.
- Use `MediaQuery` and bounded responsive layouts; do not assume one mobile
  screen size or ignore text scaling.
- Ensure operational tables and JSON views remain usable at narrow widths
  through deliberate column reduction, wrapping, or horizontal scrolling.
- Keep platform-specific URLs, credential storage, permissions, and transport
  exceptions in platform or configuration code rather than feature widgets.
- Read the API base URL from environment configuration. A local default may be
  supplied only by a clearly development-scoped entry point.
- Use `dio` as the configured transport and generated `retrofit` clients as the
  REST API surface. Do not issue feature-level requests through Dio directly.
- Use `go_router` with `go_router_builder` for typed routes and generated route
  parameters. Do not distribute raw route strings across feature widgets.
- Use Cubit from `flutter_bloc` for feature state ownership and Freezed for
  immutable state variants and typed one-off events.
- Return typed failures through `fpdart` `Either`/`TaskEither` at repository and
  domain boundaries. Convert Dio and storage exceptions inside infrastructure.
- Use Freezed and `json_serializable` for DTOs and immutable state. Do not write
  manual JSON field extraction, `toJson`, equality, or state-union boilerplate.
- Run `dart run build_runner build` after changing
  generated declarations. Format both source and generated Dart files and keep
  generated output synchronized in version control.
- Restore persisted session data before selecting the initial authenticated
  route. Represent restoration explicitly so protected content is not briefly
  shown with an unknown session.
- Access persistent credentials only through `SessionStore`, implemented with
  `flutter_secure_storage`. Await credential writes and deletes that determine
  the current authentication state.
- Run persistent-session Web builds only on localhost during development and
  HTTPS in deployed environments. Production responses must include HSTS and a
  restrictive CSP before persistent browser credentials are accepted.
- Do not place access tokens, refresh tokens, API keys, signing secrets,
  payloads, previews, or authorization headers in diagnostics or exception
  strings.
