---
name: retire-module
description: "Safely retire a module: check dependencies, update workflow files, delete code, and archive module context."
---

You act as Team Lead retiring a module. The goal is to leave no broken references in the project or workflow.

## Entry Conditions
- Root `CLAUDE.md` exists.
- The user named a module to retire.

## Step 1 - Dependency Check

Before touching any file, scan for all references to the target module.

**Workflow files to check:**
- [ ] `CLAUDE.md` Module Map — is this module listed?
- [ ] `BLUEPRINT.md` — does any other module depend on this module? Does any other module produce output consumed by this one?
- [ ] `TODO.md` — are there open tasks for this module?
- [ ] Root `CHANGELOG.md` Module Summaries — does this module have an entry?
- [ ] `src/[other-module]/CLAUDE.md` — do other modules list this module as a dependency or data source?

**Project code to check:**
- [ ] `src/[other-module]/` — does any code import or call this module?

Report findings as:

```markdown
Dependency Report for [module-name]:
- Workflow references: [list files and lines, or "none"]
- Code references: [list files and lines, or "none"]
- Open tasks: [list from TODO.md, or "none"]
- Blocking dependency: [yes/no — does another module require this module's output to function?]
```

If a blocking dependency exists, stop and ask the user how to resolve it before continuing.

## Step 2 - Plan

Present a retirement plan and wait for user confirmation before proceeding.

```markdown
Retirement plan for [module-name]:
- Workflow files to update: [list]
- Code to delete: [list paths under src/[module]/]
- To archive:
    src/[module]/CLAUDE.md    → _archive/[module]/CLAUDE.md
    src/[module]/CHANGELOG.md → _archive/[module]/CHANGELOG.md
- Main risks: [any concerns — e.g. shared utilities, external callers]
```

## Step 3 - Execute

Execute in this order. Do not skip steps.

### 3a — Update workflow files
- Remove the module from the Module Map in `CLAUDE.md`.
- Remove the module's block from `BLUEPRINT.md`: execution flow entry, module assignment row, and interface rows where this module is producer or consumer.
- Remove open tasks for this module from `TODO.md`.
- Remove the module's subsection from root `CHANGELOG.md` Module Summaries.
- Update any `src/[other-module]/CLAUDE.md` that references this module as a dependency or data source.

### 3b — Delete code
- Delete all files under `src/[module]/` **except** `CLAUDE.md` and `CHANGELOG.md`.
- Verify no other module's code still imports or calls anything from this module.

### 3c — Archive module context
- Move `src/[module]/CLAUDE.md` → `_archive/[module]/CLAUDE.md`.
- Move `src/[module]/CHANGELOG.md` → `_archive/[module]/CHANGELOG.md`.
- Remove the now-empty `src/[module]/` directory.
- Record the retirement in root `CHANGELOG.md` as a dated project-level entry:
  `YYYY-MM-DD: Retired module [module-name]. Context archived to _archive/[module]/`.

## Guardrails
- Do not proceed past Step 1 if a blocking dependency exists and the user has not resolved it.
- Do not modify or delete files in `_archive/`.
- Do not modify `CLAUDE.md` Changelog Convention or AI Reading Rules sections.
- Do not touch unrelated modules.

## Done Criteria
- [ ] No remaining references to the retired module in workflow files or other modules' code
- [ ] `src/[module]/` directory removed
- [ ] `_archive/[module]/CLAUDE.md` and `_archive/[module]/CHANGELOG.md` exist
- [ ] Root `CHANGELOG.md` updated with dated retirement entry
- [ ] `TODO.md` cleaned of retired module tasks
