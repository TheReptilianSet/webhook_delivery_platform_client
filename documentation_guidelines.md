# Documentation guidelines

Use Dart documentation comments (`///`) for components whose responsibility is
not obvious from their name, signature, and location.

Documentation is useful for:

- repository and service boundaries;
- annotated Retrofit interfaces when authentication or idempotency behavior is
  not obvious from the method signature;
- session persistence and refresh coordination boundaries;
- use cases, policies, coordinators, and resolvers;
- state/event/failure types with non-obvious lifecycle rules;
- adapters between transport, domain, and presentation models;
- components that preserve an important user-flow invariant.
- local decisions whose rationale cannot be expressed by structure and names.

A good comment briefly states what the component does and why it exists. When
relevant, mention the dependency it isolates, the invariant it owns, or the
behavior it must not change.

```dart
/// Persists a rotated token pair before releasing authenticated requests.
///
/// Kept at the session boundary so concurrent requests cannot observe a new
/// access token paired with an obsolete refresh token.
abstract interface class SessionStore {}
```

Do not document every DTO, private widget, obvious value object, generated
class, or mechanical mapping. Document the annotated source declaration when
needed and never add comments by editing generated output. Comments must
explain intent rather than narrate the syntax.

For local decisions, use these prefixes sparingly:

- `WHY:` for a non-obvious reason.
- `IMPORTANT:` for an invariant that must survive refactoring.
- `WORKAROUND:` for a temporary external limitation.
- `TODO:` for a concrete follow-up with enough context to act on it.

Repository-wide architectural decisions belong in
`docs/architecture/decisions/` and follow the ADR structure defined in
`architecture_guidelines.md`. A useful rationale names the applied principle
and the project-specific constraint; statements such as "best practice" or
"cleaner" are not sufficient justification.

Documentation describes intended responsibility but is not proof of runtime
behavior. Verify it against source code and the current API contract.

Generated files must start with their generator's standard marker and require
no manual documentation. Architectural documentation should name the source
annotation or declaration, not a generated implementation class.
