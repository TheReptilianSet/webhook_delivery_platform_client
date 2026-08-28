# ADR 0001: Feature-first Clean Architecture and code generation

- Status: accepted
- Date: 2026-08-27

## Context

The client is an operational Flutter application for authentication,
organization administration, endpoint onboarding, event inspection, delivery
evidence, and replay. These workflows share transport and session concerns but
have different permissions, state, and user intent. The OpenAPI contract also
contains enough DTO and REST boilerplate that handwritten implementations would
slow development and increase mapping inconsistencies.

## Constraints and principles

- Flutter must support Web, Android, and iOS from one codebase.
- The backend OpenAPI contract and stable error envelope are authoritative.
- Clean Architecture and dependency inversion keep policy independent from UI
  and infrastructure.
- DDD applies to real webhook concepts and invariants, not passive API records.
- Clean Code, KISS, and YAGNI prohibit ceremonial or forwarding-only layers.
- Code generation should remove mechanical work without generating business
  policy.

## Options considered

1. Handwritten HTTP, DTOs, JSON mapping, state classes, and routes.
2. Generate a complete client directly from OpenAPI.
3. Declare typed Retrofit APIs and Freezed models/routes/states, then generate
   their implementations through `build_runner`.

## Decision

Use a feature-first structure with meaningful `domain`, `data`, and
`presentation` layers. Use:

- Dio configuration with generated Retrofit clients;
- Freezed and `json_serializable` for DTOs and immutable state;
- `go_router_builder` for typed routes;
- Cubit from `flutter_bloc` for feature state ownership;
- `fpdart` for typed result and failure composition;
- repositories between generated APIs and presentation/domain code.

Generated source is committed and verified as current in CI. A feature may omit
a domain layer when it has no independent policy, but it may not bypass the
repository/transport or state/UI boundaries.

## Rationale

Option 1 repeats contract-driven code and makes review spend time on mechanical
mapping. Option 2 would be attractive after the OpenAPI error and security
metadata are complete, but the current schema does not fully describe runtime
authentication and errors. Option 3 provides codegen speed now while keeping
the hand-authored API declaration and repository boundary explicit.

This applies Clean Architecture to dependency direction, DDD to webhook
language and invariants, Clean Code to cohesive ownership, and KISS/YAGNI by
allowing layers only when they carry responsibility.

## Consequences

- Annotation changes require regeneration before analysis and tests.
- Generator compatibility becomes part of dependency maintenance.
- Repositories must add error conversion, policy, or composition and must not
  become forwarding-only wrappers.
- Generated transport models may be used directly for passive read data;
  semantic domain models remain separate where invariants require them.
- A later complete OpenAPI generator can replace handwritten Retrofit
  declarations behind repositories without changing feature UI.

