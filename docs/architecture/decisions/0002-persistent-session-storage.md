# ADR 0002: Persistent authenticated session storage

- Status: accepted
- Date: 2026-08-27

## Context

The client must keep the authenticated user session across application and
browser restarts. The backend rotates refresh tokens, so access token, refresh
token, and expiry metadata form one consistency-sensitive credential set.
Producer API keys and endpoint signing secrets are separate one-time secrets.

## Constraints and principles

- Persistent session storage is an explicit product requirement.
- Feature code must remain independent from platform storage APIs.
- Refresh-token reuse revokes the backend token family.
- Clean Architecture requires persistence behind an application-owned
  boundary.
- Security requires credentials to stay out of logs, diagnostics, and ordinary
  preferences.

## Options considered

1. Keep credentials only in process memory.
2. Store credentials directly in shared preferences or browser local storage.
3. Persist credentials through `SessionStore` implemented with
   `flutter_secure_storage`.
4. Use an HttpOnly cookie or backend-for-frontend for Web.

## Decision

Use option 3. `SessionStore` is the only credential-persistence boundary.
Restore it before resolving the initial route. Store a complete token set after
login and atomically from the application's perspective after refresh. Clear
both persisted and in-memory state on logout, corrupt data, or rejected refresh.

Serialize one generated `PersistedSessionDto` with the access token, refresh
token, and both expirations into a single storage value. This avoids exposing a
new access token with a refresh token from the preceding rotation.

Use `flutter_secure_storage` on Web, Android, and iOS. Web development is
limited to localhost; deployed Web requires HTTPS, HSTS, and restrictive CSP.
Producer API keys and endpoint signing secrets are never written to
`SessionStore`.

## Rationale

Option 1 violates the persistence requirement. Option 2 couples features to
platform details and provides no protected native credential storage. Option 3
provides one replaceable cross-platform boundary and protected native storage.
Option 4 offers stronger Web isolation from JavaScript but requires a backend
contract and deployment change outside the current functional-client scope.

This decision applies dependency inversion through `SessionStore`, single
responsibility by isolating credentials, and Clean Code through explicit
startup, refresh, and logout flows.

## Consequences

- Persistent Web sessions remain exposed to the application's JavaScript/XSS
  threat surface; encryption at rest does not remove that risk.
- Flutter Web storage is bound to its browser and domain and is not a backup or
  cross-device session mechanism.
- Refresh coordination must serialize network rotation and persistent writes.
- Storage failure is an authentication failure and must produce a signed-out
  state rather than a partially restored session.
- The boundary permits a future migration to HttpOnly cookie/BFF auth without
  rewriting feature repositories or UI.
