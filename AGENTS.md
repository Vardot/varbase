# AGENTS.md

Guidance for AI coding agents working on the Varbase distribution profile (10.1.x line).

## Before you start

Read the project history and context first:

- **`CHANGELOG.md`** — what changed in each release, newest first. Read it before proposing changes.
- **Merge request comments and history** on
  [git.drupalcode.org/project/varbase](https://git.drupalcode.org/project/varbase/-/merge_requests).
- **Issue comments** on
  [drupal.org/project/issues/varbase](https://www.drupal.org/project/issues/varbase).

## The Varbase 10.1.x line

- Drupal **~11.4** only. Bootstrap 5 front-end via **Vartheme BS5**.
- The profile requires the `varbase_*` modules, `vartheme_bs5`, `vmi`, `vardot/varbase-patches`,
  and `vardot/varbase-replaces` directly in `composer.json`.
- Cross-dependencies are pinned to stable `~` constraints at release and flipped back to `*-dev`
  in the follow-up "Back to DEV" change.
- Automated functional acceptance testing (webship-js) lives in **varbase_project**, not the profile.

## When you make a change

- Add an entry under `## [Unreleased]` in `CHANGELOG.md`.
- Keep commit messages in the Drupal commit-type format: `{type}: #{issueID} Summary`
  (see https://www.drupal.org/node/3586390).
- Never bump the version or tag a release without explicit maintainer approval.
