# Template Maintenance Tasks

> This is an internal template-maintenance document.
> User project work belongs in root `TODO.md`.
> Normal AI implementation work should not read `_internal/`.

---

# Priority Tasks

## P0 - Separate Template Tasks From User Project Tasks

Goal: keep template maintenance tasks out of user project workflows.

- [x] Create `_internal/`
- [x] Move template task tracking into `_internal/TEMPLATE_TASKS.md`
- [x] Add `_internal/README.md`
- [x] Remove user-facing references to old template task docs
- [x] State that normal AI work should not read `_internal/`

Done criteria:

- [x] Template tasks are separated from user project tasks
- [x] Root `TODO.md` is reserved for user project work
- [x] `_internal/` is marked as template-maintainer-only context

---

## P1 - Reduce Token Use

Goal: make agents read only the files needed for the current task.

### 1. Default Reading Rules

- [x] State that AI should not read all of `docs/` by default
- [x] State that AI should not read `_internal/` by default
- [x] State that AI should not read Korean and English docs for the same topic together
- [x] State that English docs are the default when documentation is needed
- [x] State that Korean docs are read only when the user requests them

### 2. Command Reading Scope

- [x] Minimize `/today` reading scope
  - [x] `TODO.md`
  - [x] `CHANGELOG.md`
  - [x] `BLUEPRINT.md` only when needed
- [x] Minimize `/implementer` reading scope
  - [x] `CLAUDE.md`
  - [x] `BLUEPRINT.md`
  - [x] `TODO.md`
  - [x] relevant `src/[module]/CLAUDE.md`
- [x] State that `/today` must not implement
- [x] State that `/implementer` must not read or edit unrelated modules
- [x] State that missing docs should not trigger broad document scans

### 3. Reduce Documentation Duplication

- [x] Keep structure details in `ARCHITECTURE`
- [x] Keep usage procedure in `USAGE_GUIDE`
- [x] Keep setup procedure in `SETUP_GUIDE`
- [x] Keep command descriptions in `SKILLS`
- [x] Use links instead of long repeated explanations in other docs
- [x] Avoid repeating Planner / Team Lead / Teammate role details across many docs

### 4. TODO / CHANGELOG Compression

- [x] Keep `TODO.md` focused on current work
- [x] Keep only `Today / Next / Blocked` at the top of `TODO.md`
- [x] Move completed old work to `CHANGELOG.md`
- [x] Keep recent summary at the top of `CHANGELOG.md`
- [x] Document that old history can move to `_archive/` when needed

Done criteria:

- [x] `/today` works by default from `TODO.md` and `CHANGELOG.md`
- [x] `/implementer` works by default from `CLAUDE.md`, `BLUEPRINT.md`, `TODO.md`, and relevant module docs
- [x] Normal implementation does not read `_internal/`
- [x] Normal implementation does not read Korean and English docs together
- [x] Documentation duplication is reduced

---

## P2 - Clarify README Direction

Goal: make the root README describe this repository as an AI workflow template.

- [x] Replace root `README.md` with a template overview
- [x] Explain that this is not an application code template
- [x] Link to canonical docs
- [x] Explain core file roles briefly
- [x] Mention the difference between root `TODO.md` and `_internal/TEMPLATE_TASKS.md`

Done criteria:

- [x] GitHub landing page clearly presents the repository as a template
- [x] User project README placeholders are not mixed with the template README

---

## P3 - Language Policy Cleanup

Goal: keep agent-facing files English-first and split human-facing docs into English/Korean versions.

- [x] Convert agent-facing files to English
  - [x] `CLAUDE.md`
  - [x] `BLUEPRINT.md`
  - [x] `TODO.md`
  - [x] `CHANGELOG.md`
  - [x] `.claude/commands/*` (no command files currently present)
  - [x] `.claude/skills/*`
  - [x] `src/[module]/CLAUDE.md` template
- [x] Split human-facing docs into English/Korean pairs
  - [x] `docs/ARCHITECTURE.en.md`
  - [x] `docs/ARCHITECTURE.ko.md`
  - [x] `docs/USAGE_GUIDE.en.md`
  - [x] `docs/USAGE_GUIDE.ko.md`
  - [x] `docs/SETUP_GUIDE.en.md`
  - [x] `docs/SETUP_GUIDE.ko.md`
  - [x] `docs/SKILLS.en.md`
  - [x] `docs/SKILLS.ko.md`
- [x] Mark English docs as canonical
- [x] Mark Korean docs as human-facing translations
- [x] State that AI reads English docs by default
- [x] State that `.ko.md` is read only when the user requests Korean docs

Done criteria:

- [x] AI instruction files are English
- [x] Docs are organized as `.en.md` / `.ko.md` pairs
- [x] English docs are canonical
- [x] Korean docs are human-facing translations

---

## P4 - Stabilize Minimal Documentation Structure

Goal: make the documentation entry points clearer for users and agents.

- [x] Consider adding `docs/README.md`
- [x] Link language-specific docs from `docs/README.md`
- [x] Link root `README.md` to `docs/README.md` if added
- [x] Verify all documentation links

Done criteria:

- [x] Root README has a clear documentation entry point
- [x] Docs README, if added, exposes both language tracks
- [x] Document responsibilities do not overlap

---

# Active Tasks

## Identity & Positioning

- [x] 이 저장소를 AI 워크플로우 환경으로 명시적으로 정의하기
- [x] "template", "starter", "boilerplate" 표현을 앱/프로젝트 템플릿 맥락에서 제거하기
- [x] README에 "이게 무엇인가 / 무엇이 아닌가" 섹션 추가하기
- [ ] GitHub 저장소 설명 업데이트 (필요 시)

## Root Workflow Documents

- [x] 루트 문서에서 placeholder/기본값 제거하기
- [x] `CLAUDE.md` 재작성 — 실제 루트 컨텍스트
- [x] `BLUEPRINT.md` 재작성 — Phase 기반 실행 흐름
- [x] `TODO.md` 복원 — 깨끗한 사용자용 템플릿
- [x] `CHANGELOG.md` 복원 — 깨끗한 사용자용 템플릿
- [x] 루트 워크플로우 문서에 상태 레이블 추가 (Active Root Context 등)
- [x] `src/README.md` 추가 — `src/` 사용 기준 설명

## Example Project

- [ ] `examples/` 추가하기
- [ ] `examples/minimal/` 생성하기
- [ ] 모든 일반 예시와 placeholder를 `examples/minimal/`로 이동하기
- [ ] 예시 `CLAUDE.md` 생성하기
- [ ] 예시 `BLUEPRINT.md` 생성하기
- [ ] 예시 `TODO.md` 생성하기
- [ ] 예시 `CHANGELOG.md` 생성하기
- [ ] 예시 `src/example-module/CLAUDE.md` 생성하기
- [ ] 예시 `src/example-module/CHANGELOG.md` 생성하기
- [ ] `examples/README.md` 추가하기
- [ ] 예시가 루트 워크플로우 상태와 충돌하지 않도록 확인하기

## Doctor Scripts

- [x] `scripts/doctor.bat` — `setup.bat [4] Health`로 통합 (별도 파일 없음)
- [x] `scripts/doctor.sh` 추가
- [x] 문서 경로 확인 (`doctor.sh [1] Reference Links`)
- [x] README 링크 확인 (`doctor.sh [1] Reference Links`)
- [x] docs 언어 쌍 확인 (`setup.bat [4] Health` + `doctor.sh [2] Language Pairs`)
- [x] 루트 워크플로우 파일 존재 확인 (`setup.bat [2] Files` 기존)
- [x] `.claude/skills/today/SKILL.md` 확인 (`setup.bat [2] Files` 기존)
- [x] `.claude/skills/implementer/SKILL.md` 확인 (`setup.bat [2] Files` 기존)
- [x] `CLAUDE.md` 참조가 실제 파일을 가리키는지 확인 (`doctor.sh`)
- [x] `README.md` 참조가 실제 파일을 가리키는지 확인 (`doctor.sh`)
- [x] `example/`에 필수 예시 파일이 있는지 확인 (`setup.bat [4] Health`)
- [x] 루트 문서에 해결되지 않은 placeholder 발견 시 경고 (`setup.bat [3] Planning State` 기존)
- [x] 영어/한국어 문서 쌍 누락 시 경고 (`setup.bat [4] Health`)
- [x] 명확한 pass/fail 요약 출력 (`setup.bat Summary` 섹션 추가)
- [ ] "template", "starter", "boilerplate" 표현 경고 — 보류 (false positive 우려)

## Documentation Cleanup

- [ ] 모든 docs에서 오래된 템플릿 지향 언어 감사
- [ ] 아키텍처 문서를 워크플로우 환경 관점으로 업데이트
- [ ] 설정 가이드를 워크플로우 환경 초기화 방법으로 업데이트
- [ ] 사용 가이드를 일상적인 워크플로우 운영 방법으로 업데이트
- [ ] 스킬 가이드를 `/today`와 `/implementer` 사용법 위주로 업데이트
- [ ] 용어 사전 추가 (workflow environment, root context, execution blueprint 등)

## Release Workflow

- [ ] GitHub Releases 흐름 생성
- [ ] 워크플로우 채인지로그와 프로젝트 채인지로그 분리
- [ ] `WORKFLOW_CHANGELOG.md` 추가 — 이 저장소 자체의 발전 이력용
- [ ] 릴리스 노트 템플릿 추가

## Optional Integrations

- [ ] `integrations/notion/` 추가하기 (통합하기로 결정 시)
- [ ] `integrations/notion/README.md` 추가하기
- [ ] 예시 Notion 스키마 또는 동기화 매핑 추가하기
- [ ] 구현이 없는 경우 통합 문서를 선택적(optional)으로 표시하기
