# AGENTS.md

Guidance for AI coding agents working on the Varbase distribution profile (11.0.x line).

## Before you start

Read the project history and context first:

- **`CHANGELOG.md`** — what changed in each release, newest first. Read it before proposing changes.
- **Merge request comments and history** on
  [git.drupalcode.org/project/varbase](https://git.drupalcode.org/project/varbase/-/merge_requests).
- **Issue comments** on
  [drupal.org/project/issues/varbase](https://www.drupal.org/project/issues/varbase).

## The Varbase 11 architecture

- The **profile** is thin: it requires `drupal/varbase_starter`, which pulls the whole recipe suite
  (`varbase_*_base` recipes, `varbase_ai_*`, `varbase_media_assets`, `varbase_demo_content`,
  `vartheme_bs5`, and the Varbase modules).
- Configuration lives in the **recipes**, not in the profile.

## When you make a change

- Add an entry under `## [Unreleased]` in `CHANGELOG.md`.
- Keep commit messages in the Drupal commit-type format: `{type}: #{issueID} Summary`
  (see https://www.drupal.org/node/3586390).
- Never bump the version or tag a release without explicit maintainer approval.
