# Tasks

> pipeline-template 프로젝트의 현재 작업 목록

---

## 다음 세션에 할 것




---

## 진행 중

---

## 완료

- [x] `docs/ARCHITECTURE.md` 추가 — AI 작업 운영 템플릿 구조, 전체 흐름, 파일 역할, 에이전트 역할 경계 명시
- [x] `setup.bat` 상태 점검 스크립트로 강화 — 파일 존재·placeholder·설계 상태 기반 다음 행동 안내
- [x] `TODO.md` + `CHANGELOG.md` 도입 — `docs/TASKS.md` gitignore 처리, `/today` · implementer · Planner 참조 전면 교체

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
- [x] `/today` skill 추가 (TASKS.md 요약 / 작업 추천 / 파일 목록 안내)
- [x] `/implementer` skill 수정 (3단계 흐름 / TASKS.md 연동 / 발견사항 역기록)
- [x] `docs/INTERFACES.md` 검토 → BLUEPRINT.md 인수인계 테이블로 대체 결정
- [x] `templates/` → `planner/` 리네이밍 (Planner 전용 폴더 명확화)
- [x] Planner 세션 진입 방식 개선 (bootstrap 지침 / 세션 시작 시 읽을 파일 순서 추가)
- [x] `documenter` skill 삭제 + `docs/SKILLS.md` 정리 (today / implementer만 유지)
- [x] `grill-me` skill 삭제
- [x] 모듈별 `CLAUDE.md` 인수인계 흐름 점검 — BLUEPRINT ↔ 모듈 Interface 교차 검증 추가, worktree teammate에 BLUEPRINT.md 전달 추가
