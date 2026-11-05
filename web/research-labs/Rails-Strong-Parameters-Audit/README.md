# Rails Strong Parameters Audit — Research Lab

## Metadata

- **Type:** Original research-inspired practice lab; not an official CTF competition challenge
- **Event / collection:** Research Labs (2026)
- **Category:** Web / Application Security — mass assignment and parameter filtering
- **Difficulty:** Beginner–Intermediate (estimated for this lab)
- **Platform:** Local code review and isolated unit-test design; no vulnerable service required
- **Official challenge URL:** Not applicable; this is an original lab idea
- **Primary source:** Rails maintainers, GHSA-wm3x-v3qw-4jh3, published 4 November 2026
- **Source link:** https://github.com/rails/rails/security/advisories/GHSA-wm3x-v3qw-4jh3

## Challenge statement

You are reviewing a Rails account-management controller. A developer has added an audit callback that enumerates submitted parameter keys before passing the result to Active Model mass assignment.

Review the following simplified code:

```ruby
def update
  attributes = params.require(:profile).each_key do |key|
    audit_parameter_name(key)
  end

  @profile.update(attributes)
end
```

The application relies on Strong Parameters to prevent clients from assigning protected attributes. Determine whether this code preserves that security boundary in the affected Action Pack versions.

This is a static code-review and defensive-test exercise. Do not deploy a vulnerable application, construct exploit requests against a live target, or attempt unauthorized attribute changes on a real service.

## Objectives

1. Trace the return value of `ActionController::Parameters#each_key` when called with a block in the affected versions.
2. Distinguish the `Parameters` object from its internal hash representation, including the behavior expected by Active Model mass assignment.
3. Explain why the mass-assignment protection check can fail when the return value is passed onward.
4. Record the affected and fixed Action Pack version ranges from the official advisory.
5. Propose a minimal refactor that keeps the permitted-parameters object as the value passed to mass assignment.
6. Design regression tests proving that protected attributes remain rejected and permitted attributes still update correctly.

## Prerequisites

- Basic Ruby syntax and Rails controller conventions
- Strong Parameters and Active Model mass assignment
- Familiarity with unit tests and versioned dependency advisories

## Hints

<details>
<summary>Hint 1 — Inspect the return value</summary>

Compare the return value of `each_key` when called with a block and when called without one. Do not assume that an iterator returns the receiver.

</details>

<details>
<summary>Hint 2 — Follow the security boundary</summary>

Find the object on which Active Model checks whether parameters have been permitted. Then identify the exact object passed to `update`.

</details>

<details>
<summary>Hint 3 — Compare sibling methods</summary>

The advisory discusses the behavior of `each`, `each_pair`, and `each_value`. Compare their block-return behavior with `each_key` and inspect the upstream patch.

</details>

## Completion criteria

- [ ] Explain the affected `each_key` return behavior with a small isolated test.
- [ ] Identify the object type passed to mass assignment in the review snippet.
- [ ] Cite the official advisory for the affected and fixed version ranges.
- [ ] Propose a refactor that does not pass the iterator's return value to mass assignment.
- [ ] Add regression tests for both permitted and protected attributes.
- [ ] Record assumptions, evidence, and remaining uncertainty in `SOLUTION.md`.

## Safety and provenance

This lab contains no exploit, payload, credentials, network target, binary, or third-party challenge material. The controller snippet is a simplified educational review target, not copied from a vulnerable production application. The lab is based on a public Rails maintainer advisory and is not an official event challenge or Rails training exercise.
