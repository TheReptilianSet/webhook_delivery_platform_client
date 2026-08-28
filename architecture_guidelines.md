# Flutter architecture guidelines

## Engineering approach and rationale

The project uses named engineering principles as decision tools, not labels.
Every non-obvious choice must identify the problem it solves, the principle it
applies, and the trade-off it introduces.

### Clean Architecture

Business rules depend on abstractions and do not depend on Flutter, Retrofit,
Dio, storage plugins, or generated transport implementations.

Why: authentication, organization permissions, idempotency, endpoint lifecycle,
and replay rules must remain testable and must survive replacement of UI or
infrastructure technology.

### Clean Code

Use cohesive classes, intention-revealing names, small public APIs, explicit
data flow, and one level of abstraction per function. Prefer code that exposes
its invariant over comments that compensate for unclear structure.

Why: operational and security-sensitive code is reviewed more often than it is
written. Local clarity reduces regression risk and shortens incident analysis.

### Domain-Driven Design (DDD)

Use DDD pragmatically for behavior with real domain meaning: authenticated
session rotation, organization membership and roles, endpoint lifecycle,
idempotent event submission, delivery status, attempts, and replay. Use the
backend terminology consistently in code. Do not create entities, value
objects, or use cases for passive data that has no independent rule.

Why: a shared ubiquitous language prevents UI terminology from drifting away
from the backend contract, while pragmatic scope avoids ceremonial layers.

### SOLID and dependency inversion

- Single Responsibility: each component has one reason to change.
- Open/Closed: add behavior through stable boundaries when multiple
  implementations are genuinely expected; do not prebuild extension points.
- Liskov Substitution: implementations must preserve repository and storage
  contracts, including failure and cancellation behavior.
- Interface Segregation: expose narrow feature contracts rather than one
  application-wide repository.
- Dependency Inversion: policy depends on contracts; infrastructure implements
  those contracts and is connected in the composition root.

Why: these rules isolate change without multiplying abstractions that merely
forward arguments.

### Separation of concerns and feature-first organization

Group code first by user capability and then by meaningful layer. UI renders,
Cubit coordinates, domain code owns policy, repositories translate failures and
compose data, Retrofit performs REST transport, and `SessionStore` persists the
session.

Why: most changes affect one user journey. Feature ownership limits the number
of unrelated files and modules touched by that change.

### KISS, YAGNI, and deliberate DRY

Choose the simplest design that preserves required boundaries. Do not add a
generic base repository, base Cubit, mapper hierarchy, or extension point for a
hypothetical future need. Remove duplication only when the duplicated concept
has the same reason to change; similar-looking domain rules may remain separate.

Why: abstraction has maintenance cost. Premature reuse creates coupling and can
be harder to remove than straightforward local code.

### Code generation

Generate mechanical code for DTOs, JSON, immutable states, typed routes, and
Retrofit clients.

Why: generated code makes API-shaped boilerplate consistent and moves review
attention to contracts, policy, and user behavior. Generation does not replace
domain modeling, repository boundaries, or tests.

### Explicit error modeling

Use typed failure models and `Result`/`Either` composition through `fpdart` at
domain and repository boundaries. Exceptions may exist inside infrastructure
but must be converted before reaching Cubit or UI.

Why: expected authentication, validation, authorization, conflict, rate-limit,
and connectivity outcomes are application data, not exceptional control flow.

### Spaghetti Code anti-pattern

Spaghetti Code is prohibited. Warning signs include widgets calling Dio or
storage, Cubits parsing JSON, repositories navigating or showing messages,
global mutable session data, circular feature imports, a catch-all `core`
module, deeply nested callbacks, and one class coordinating unrelated features.

Why: hidden control flow and mixed responsibilities make behavior difficult to
test, secure, and change. When a change requires edits across unrelated layers,
reassess the ownership boundary before adding more conditionals.

## Decision rationale policy

A repository-wide decision requires a short ADR under
`docs/architecture/decisions/`. Record:

1. Context and concrete problem.
2. Constraints and relevant named principles.
3. Options considered.
4. Selected option and why it fits this project.
5. Consequences, risks, and rollback or migration path.

Use an ADR for dependencies, state-management changes, authentication/storage
strategy, code-generation policy, cross-feature boundaries, and exceptions to
the architecture. A local `WHY:` comment is sufficient only when the decision
does not affect a public boundary or another feature. Do not add comments or
ADRs that merely restate syntax.

## Structure

Use a feature-first layout. A feature may contain `domain`, `data`, and
`presentation` folders when each layer has meaningful responsibility.

- Domain contains business entities, value objects, policies, use cases, and
  repository contracts. It does not depend on Flutter, HTTP clients, DTOs, or
  storage implementations.
- Data contains generated Retrofit clients, generated transport models,
  storage implementations, and meaningful mappings between transport and
  application models.
- Presentation contains widgets, controllers, and immutable UI state. It does
  not call an HTTP client, platform storage, or databases directly.
- Core contains shared configuration and infrastructure. Do not move
  feature-specific behavior into core.

Dependencies point toward stable application rules: presentation may depend on
domain contracts, and data may implement domain contracts. External services
are accessed through explicit boundaries.

For small MVP features, adjacent responsibilities may share a file and a
domain layer may be omitted when there are no independent business rules. Do
not duplicate generated transport models with mechanically identical domain
models. The network/UI boundary and state ownership rules still apply.

## Code generation toolchain

- The baseline toolchain is `dio`, `retrofit`, `retrofit_generator`,
  `freezed_annotation`, `freezed`, `json_annotation`, `json_serializable`, and
  `build_runner`, plus `go_router`/`go_router_builder` for typed navigation,
  `flutter_bloc`/`bloc` for Cubit state ownership, `fpdart` for typed results,
  and `flutter_secure_storage` for durable sessions.
- Use Freezed declarations for immutable DTOs, domain unions where needed, and
  presentation state unions.
- Use `json_serializable` through Freezed for request and response JSON.
- Use annotated `retrofit` interfaces and `retrofit_generator` for all backend
  REST operations.
- Use `build_runner` as the single generation entry point. Generated `.g.dart`
  and `.freezed.dart` files are build artifacts committed beside their source.
- Do not handwrite `fromJson`, `toJson`, equality, `copyWith`, sealed state
  variants, or Retrofit method bodies when generators support them.
- A handwritten mapper is allowed only for a semantic transformation between
  genuinely different transport and domain concepts. It must not duplicate
  JSON serialization or copy identical fields without adding meaning.
- Regenerate after annotation or model changes. CI must regenerate and fail if
  committed generated output is stale.

## State and side effects

- Keep state immutable and represent screen states with generated Freezed
  unions or generated immutable state objects.
- A Cubit owns asynchronous work and screen state; widgets render state and
  forward user intent.
- Model concurrent requests deliberately. Prevent duplicate submissions and
  cancel timers or subscriptions when their owner is disposed.
- One-off UI effects must not be mistaken for durable screen state. Consume or
  clear them after handling.
- Do not retain `BuildContext` across asynchronous gaps. Perform navigation and
  feedback in the UI after observing state, or guard context use with
  `mounted`.
- Treat the selected organization as explicit session state. Clear
  organization-owned feature state when the selection or authenticated user
  changes.
- Treat role-based controls as a usability aid only. The backend remains the
  authority for authorization and every `403` must be handled.

## Localization and typed UI meaning

- Cubit, state, domain, use cases, repositories, DTOs, and coordinators must not
  create app-owned user-facing strings in a concrete language.
- Store a typed enum when an app-owned message or field error has no payload.
  Use a Freezed union when variants carry different data.
- Preserve a backend-provided message as backend data when it is safe to show;
  do not concatenate it with app-owned copy outside presentation.
- Convert typed messages, failures, and field errors to localized text in
  presentation through `AppLocalizations`, preferably in a feature-local
  `presentation/l10n` mapper.
- Keep app-owned strings in ARB files. Reuse appropriate `common*` keys instead
  of creating feature duplicates.
- Consume a one-off state event only after the UI listener handles it. Do not
  clear it immediately in the asynchronous operation's `finally` block.

Why: state communicates meaning rather than wording, non-UI layers remain
locale-independent, and localization stays exhaustive and type-safe.

## Errors and messages

- Convert transport failures into a stable application failure type at the
  network or repository boundary.
- Preserve useful backend error fields such as code, message, request ID,
  details, HTTP status, and `Retry-After` when present.
- Domain and data code return meaning, not app-owned display strings.
- Backend-provided user messages may be displayed as backend data. App-owned
  copy belongs to presentation/localization.
- Never expose raw stack traces, token values, secrets, event payloads, or
  response previews in logs.

## Networking and authentication

- Configure the base URL outside source code.
- Centralize timeouts, headers, JSON handling, authentication, and error
  parsing in shared Dio configuration consumed by generated Retrofit clients.
- Repositories call generated Retrofit interfaces. Widgets, Cubits, and
  domain services must not call Dio or construct REST requests directly.
- Keep management and producer authentication paths distinct. Prefer separate
  Retrofit interfaces or explicitly separated Dio clients so a producer key
  cannot leak into a management request and a user token cannot be used for
  event ingestion.
- User access tokens authenticate management endpoints. Producer API keys
  authenticate only event ingestion and must never replace the user token for
  management requests.
- Serialize refresh-token rotation so concurrent `401` responses cannot reuse
  the same refresh token. Retry an authenticated request at most once, avoid
  refresh loops, and clear the session when refresh is rejected.
- Persist access token, refresh token, and expiry metadata through a
  `SessionStore` backed by `flutter_secure_storage`. Restore the session before
  resolving authenticated routes.
- Treat persistent browser credentials as an explicit security trade-off. The
  `flutter_secure_storage` web implementation is allowed only on localhost or
  HTTPS. Production Web must enforce HSTS, a restrictive CSP, and dependency
  hygiene. Keep storage behind `SessionStore` so web authentication can later
  migrate to an HttpOnly-cookie or BFF design without changing feature code.
- Treat API keys and endpoint signing secrets as one-time values. Keep them
  only long enough to present an explicit copy action, then discard them.
- Reuse the same `Idempotency-Key` when retrying the same event-ingestion or
  delivery-replay intent. Generate a new key for a new intent.
- Preserve opaque cursors and IDs without parsing them. Cursor navigation must
  not infer ordering or offsets.
- Decode a response preview only when the response says it is available and
  identifies its encoding. Keep the original transport value out of logs.
- Close clients, polling timers, streams, and other owned resources.

## Session persistence

- `SessionStore` is the only component allowed to read or write persisted user
  credentials.
- Serialize one generated `PersistedSessionDto` containing both tokens and
  their expiry metadata into a single storage record. Do not maintain token
  generations as independently writable keys.
- Use `flutter_secure_storage` as the default implementation on supported
  native platforms and Flutter Web. Its web data is browser/domain-bound and
  must not be treated as portable backup. Feature code must not use shared
  preferences, browser storage, or platform channels directly.
- Persist a complete token set only after successful login or refresh. On
  startup, treat incomplete or corrupt records as signed out and clear them.
- Coordinate persistence with refresh rotation: do not expose the new access
  token until the replacement refresh token has been stored successfully.
- Logout and rejected refresh clear both in-memory and persisted session data,
  even when the remote logout request fails.
- API keys and endpoint signing secrets are not part of `SessionStore`.

## Domain behavior

- Registration and login are separate operations; registration does not create
  an authenticated client session unless the API contract changes.
- Switching organizations invalidates organization-scoped lists, filters, and
  detail state.
- Endpoint verification and delivery replay are explicit remote side effects.
  Prevent duplicate submissions and show their terminal result.
- URL edits may return an endpoint to pending verification. Do not infer state
  transitions locally; render the returned server state.
- Member-management actions must account for the last-owner invariant, while
  treating backend conflict responses as authoritative.
- Event and delivery data are operational evidence. Do not mutate or summarize
  them in a way that hides IDs, timestamps, statuses, or replay relationships.

## Quality

- Prefer small, cohesive classes and explicit data flow.
- Avoid premature generic repositories, base controllers, global service
  locators, and wrapper layers that only forward arguments. Generated Retrofit
  implementations do not remove the repository boundary, but repositories
  should add error conversion, session/domain policy, or meaningful
  composition rather than mirror every generated method mechanically.
- Keep deployment and platform differences in configuration.
- Validate important input on the client, while treating the backend as the
  authority for endpoint, event, delivery, role, and security constraints.
- Scale automated tests with risk. Even when tests are deferred for an MVP,
  static analysis and an end-to-end smoke check remain required.
