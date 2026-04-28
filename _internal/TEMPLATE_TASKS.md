# 템플릿 작업 TODO

> **이 문서는 템플릿 제작자용 내부 문서입니다.**  
> 템플릿을 가져간 사용자의 프로젝트 TODO가 아닙니다.  
> 사용자 프로젝트 작업은 루트의 `TODO.md`를 사용합니다.  
> 일반 AI 작업 흐름에서 `_internal/`은 읽지 않습니다.

---

# 우선순위 TODO

## P0 — 템플릿 제작용 작업 목록 분리

목표: 템플릿 제작용 작업과 사용자 프로젝트 작업이 섞이지 않게 한다.

- [x] `_internal/` 디렉터리 생성
- [x] `docs/TEMPLATETASKS.md`를 `_internal/TEMPLATE_TASKS.md`로 이동
- [x] `_internal/README.md` 추가
- [x] `docs/TEMPLATETASKS.md` 삭제
- [x] 사용자용 문서에서 `docs/TASKS.md` 관련 언급 제거
- [x] 사용자용 문서에서 `docs/TEMPLATETASKS.md` 관련 언급 제거
- [x] `setup.bat`에서 `docs\TASKS.md` 체크 제거
- [x] `_internal/TEMPLATE_TASKS.md` 상단에 "템플릿 제작자용 내부 문서"라고 명시
- [x] 루트 `TODO.md` 상단에 "사용자 프로젝트용 작업 큐"라고 명시
- [x] 일반 AI 작업 흐름에서 `_internal/`는 읽지 않도록 명시

완료 조건:

- [x] `docs/TASKS.md`가 사용자 워크플로우에 등장하지 않음
- [x] `docs/TEMPLATETASKS.md`가 사용자 워크플로우에 등장하지 않음
- [x] `_internal/TEMPLATE_TASKS.md`가 템플릿 제작자용 문서로 분리됨
- [x] 루트 `TODO.md`가 사용자 프로젝트용 작업 큐로 명확히 정의됨

---

## P1 — 토큰 사용량 줄이기

목표: AI가 매번 모든 문서를 읽지 않고, 필요한 파일만 읽게 한다.

### 1. 기본 읽기 규칙 정하기

- [ ] AI는 기본적으로 `docs/` 전체를 읽지 않도록 명시
- [ ] AI는 기본적으로 `_internal/`를 읽지 않도록 명시
- [ ] AI는 한국어/영어 문서를 동시에 읽지 않도록 명시
- [ ] 문서가 필요할 경우 기본적으로 영어 문서만 읽도록 명시
- [ ] 한국어 문서는 사용자가 요청했을 때만 읽도록 명시

### 2. 명령어별 읽기 범위 축소

- [ ] `/today`가 읽을 파일을 최소화
  - [ ] `TODO.md`
  - [ ] `CHANGELOG.md`
  - [ ] 필요할 때만 `BLUEPRINT.md`
- [ ] `/implementer`가 읽을 파일을 최소화
  - [ ] `CLAUDE.md`
  - [ ] `BLUEPRINT.md`
  - [ ] `TODO.md`
  - [ ] 관련 `src/[module]/CLAUDE.md`
- [ ] `/today`는 구현하지 않도록 명시
- [ ] `/implementer`는 관련 없는 모듈을 읽거나 수정하지 않도록 명시
- [ ] 문서가 부족해도 전체 문서를 무작정 스캔하지 않도록 명시

### 3. 문서 중복 줄이기

- [ ] 구조 설명은 `ARCHITECTURE`에만 자세히 작성
- [ ] 사용 절차는 `USAGE_GUIDE`에만 자세히 작성
- [ ] 설치 절차는 `SETUP_GUIDE`에만 자세히 작성
- [ ] 명령어 설명은 `SKILLS`에만 자세히 작성
- [ ] 다른 문서에서는 긴 설명 대신 링크만 사용
- [ ] Planner / Team Lead / Teammate 역할 설명이 여러 문서에 반복되지 않도록 정리

### 4. TODO / CHANGELOG 압축 정책

- [ ] `TODO.md`는 현재 작업 중심으로 유지
- [ ] `TODO.md` 상단에는 `Today / Next / Blocked`만 유지
- [ ] 완료된 오래된 작업은 `CHANGELOG.md`로 이동
- [ ] `CHANGELOG.md` 상단에는 최근 변경 요약만 유지
- [ ] 오래된 변경 기록은 필요하면 `_archive/`로 이동

완료 조건:

- [ ] `/today`가 기본적으로 `TODO.md`, `CHANGELOG.md`만 읽어도 동작함
- [ ] `/implementer`가 기본적으로 `CLAUDE.md`, `BLUEPRINT.md`, `TODO.md`, 관련 모듈 문서만 읽어도 동작함
- [ ] 일반 구현 중 `_internal/`을 읽지 않음
- [ ] 일반 구현 중 한국어/영어 문서를 동시에 읽지 않음
- [ ] 문서 중복이 줄어듦

---

## P2 — README 방향 정리

목표: 원본 레포의 README는 템플릿 자체를 설명하게 한다.

- [ ] 루트 `README.md`를 템플릿 소개용으로 변경
- [ ] README에서 이 레포가 "코드 템플릿"이 아니라 "AI 작업 운영 템플릿"이라고 설명
- [ ] README에서 `docs/README.md` 또는 `ARCHITECTURE`로 연결
- [ ] README에서 핵심 파일 역할을 짧게 설명
- [ ] README에서 `TODO.md`와 `_internal/TEMPLATE_TASKS.md`의 차이를 명시
- [ ] 기존 `[Project Name]`, `[한 줄 설명]` 형식은 별도 파일로 분리할지 결정
  - [ ] 예: `docs/PROJECT_README_TEMPLATE.md`
  - [ ] 또는 예: `templates/PROJECT_README.md`

완료 조건:

- [ ] GitHub 첫 화면에서 이 레포가 템플릿 원본임을 바로 알 수 있음
- [ ] 사용자 프로젝트용 README placeholder와 템플릿 원본 README가 섞이지 않음

---

## P3 — 언어 정책 정리

목표: AI가 읽는 파일은 영어 중심으로, 사람이 읽는 문서는 영어/한국어 버전으로 분리한다.

- [ ] Agent-facing 파일은 영어로 통일
  - [ ] `CLAUDE.md`
  - [ ] `BLUEPRINT.md`
  - [ ] `TODO.md`
  - [ ] `CHANGELOG.md`
  - [ ] `.claude/commands/*`
  - [ ] `.claude/skills/*`
  - [ ] `src/[module]/CLAUDE.md`
- [ ] Human-facing 문서는 영어/한국어 버전으로 분리
  - [ ] `docs/ARCHITECTURE.en.md`
  - [ ] `docs/ARCHITECTURE.ko.md`
  - [ ] `docs/USAGE_GUIDE.en.md`
  - [ ] `docs/USAGE_GUIDE.ko.md`
  - [ ] `docs/SETUP_GUIDE.en.md`
  - [ ] `docs/SETUP_GUIDE.ko.md`
  - [ ] `docs/SKILLS.en.md`
  - [ ] `docs/SKILLS.ko.md`
- [ ] 영어 문서를 기준본으로 지정
- [ ] 한국어 문서는 사람용 번역본으로 지정
- [ ] AI는 기본적으로 영어 문서만 읽도록 명시
- [ ] 사용자가 한국어 문서를 요청했을 때만 `.ko.md`를 읽도록 명시

완료 조건:

- [ ] AI용 지시 파일은 영어로 통일됨
- [ ] docs는 `.en.md` / `.ko.md` 쌍으로 정리됨
- [ ] 영어 문서가 기준본임
- [ ] 한국어 문서는 사람용 번역본임

---

## P4 — 최소 문서 구조 안정화

목표: 사용자와 AI가 어디서 시작해야 하는지 헷갈리지 않게 한다.

- [ ] `docs/README.md` 생성
- [ ] `docs/README.md`에 영어/한국어 문서 링크 추가
- [ ] 루트 `README.md`에서 `docs/README.md`로 연결
- [ ] `ARCHITECTURE`에 전체 운영 구조 설명
- [ ] `USAGE_GUIDE`에 실제 사용 흐름 설명
- [ ] `SETUP_GUIDE`에 초기 설정 설명
- [ ] `SKILLS`에 `/today`, `/implementer` 설명
- [ ] 문서 간 링크 깨짐 확인

완료 조건:

- [ ] 루트 README에서 문서 진입점이 명확함
- [ ] docs README에서 언어별 문서 진입이 가능함
- [ ] 각 문서의 역할이 겹치지 않음

---

# 보류할 작업

아래 작업들은 지금 꼭 하지 않아도 됨.  
P0~P4가 끝난 뒤 필요하면 진행한다.

## 보류 — 예시 프로젝트 추가

- [ ] `examples/` 디렉터리 추가
- [ ] minimal example project 작성
- [ ] 예시용 `CLAUDE.md`, `BLUEPRINT.md`, `TODO.md` 작성

보류 이유:

- 지금은 템플릿 구조 정리가 먼저임
- 예시 프로젝트를 너무 빨리 넣으면 "코드 템플릿"처럼 보일 수 있음

## 보류 — doctor 스크립트 추가

- [ ] `scripts/doctor.bat` 추가
- [ ] `scripts/doctor.sh` 추가
- [ ] 문서 경로 검사
- [ ] README 링크 검사
- [ ] docs 언어 쌍 검사

보류 이유:

- 아직 문서 구조가 확정되지 않았음
- 구조 확정 후 자동 검증을 붙이는 게 안전함

## 보류 — 릴리즈 전략 정리

- [ ] 버전 태그 설계
- [ ] GitHub Releases 작성
- [ ] 템플릿 변경 로그 분리

보류 이유:

- 아직 v0 안정화 전 단계임
- 먼저 문서 구조와 AI 읽기 범위를 확정해야 함

---

# 지금 당장 할 순서

1. `_internal/TEMPLATE_TASKS.md` 분리 ✓
2. `docs/TASKS.md`, `docs/TEMPLATETASKS.md` 관련 참조 제거 ✓
3. `TODO.md`와 `_internal/TEMPLATE_TASKS.md` 역할 문구 추가 ✓
4. `/today`, `/implementer` 읽기 범위 축소
5. README를 템플릿 설명용으로 변경
6. 문서 중복 제거
7. AI용 파일 영어화
8. docs 영어/한국어 분리

---

## 진행 중

---

## 완료

- [x] P0 — 템플릿 제작용 작업 목록 분리 (`_internal/` 로 이동, 사용자 워크플로우에서 제거)
- [x] `docs/ARCHITECTURE.md` 추가 — AI 작업 운영 템플릿 구조, 전체 흐름, 파일 역할, 에이전트 역할 경계 명시
- [x] `setup.bat` 상태 점검 스크립트로 강화 — 파일 존재·placeholder·설계 상태 기반 다음 행동 안내
- [x] `TODO.md` + `CHANGELOG.md` 도입 — `/today` · implementer · Planner 참조 전면 교체
- [x] 파일 구조 정리 (.claude/, docs/, templates/, src/)
- [x] Agent Teams 설정 (.claude/Settings.json)
- [x] 문서 전면 정비 (Git 일반화, CLI 혼재 제거)
- [x] setup.bat 수정
- [x] README.md → 프로젝트 플레이스홀더로 교체
- [x] docs 3파일로 통합 (SETUP_GUIDE / USAGE_GUIDE / SKILLS)
- [x] .claude/skills/ 에이전트 역할 경계 정의 (implementer / documenter / grill-me)
- [x] planner skill 제거 → Claude Desktop Project Instructions로 대체 (PLANNER_PROJECT.md)
- [x] Module Map 실행 순서·병렬 가능 컬럼 추가
- [x] AGENTS.md 완료 조건 추가
- [x] implementer skill 안전 지점 추가 (실행 계획 승인 후 teammate 생성)
- [x] Planner 완료 조건에 모듈별 CLAUDE.md 생성 추가 (worktree 진입점)
- [x] `/today` skill 추가
- [x] `/implementer` skill 수정 (3단계 흐름 / TODO.md 연동 / 발견사항 역기록)
- [x] `docs/INTERFACES.md` 검토 → BLUEPRINT.md 인수인계 테이블로 대체 결정
- [x] `templates/` → `planner/` 리네이밍 (Planner 전용 폴더 명확화)
- [x] Planner 세션 진입 방식 개선 (bootstrap 지침 / 세션 시작 시 읽을 파일 순서 추가)
- [x] `documenter` skill 삭제 + `docs/SKILLS.md` 정리 (today / implementer만 유지)
- [x] `grill-me` skill 삭제
- [x] 모듈별 `CLAUDE.md` 인수인계 흐름 점검 — BLUEPRINT ↔ 모듈 Interface 교차 검증 추가, worktree teammate에 BLUEPRINT.md 전달 추가
