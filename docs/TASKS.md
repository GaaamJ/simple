# Tasks

> pipeline-template 프로젝트의 현재 작업 목록

---

## 다음 세션에 할 것

- [ ] `docs/ARCHITECTURE.md` 추가
  - [ ] 이 템플릿이 코드 템플릿이 아니라 AI 작업 운영 템플릿임을 명시
  - [ ] 전체 작업 흐름 명시: 설계 → 인수인계 → 구현 → 발견사항 기록 → 다음 설계
  - [ ] 각 파일의 역할 정리
    - [ ] `CLAUDE.md`: 프로젝트 전체 맥락 정본
    - [ ] `docs/TASKS.md`: 현재 작업 큐 정본
    - [ ] `src/[module]/CLAUDE.md`: 모듈별 구현 인수인계 정본
    - [ ] `BLUEPRINT.md`: 실행 흐름 / 모듈 배정 / 인수인계 청사진
    - [ ] `docs/USAGE_GUIDE.md`: 사람이 읽는 운영법
  - [ ] Claude Desktop/Web, Claude Code, Codex의 역할 경계 명시
  - [ ] Planner / Implementer / Team Lead / Teammate의 책임 범위 명시


- [ ] `setup.bat`를 초기화 스크립트가 아니라 상태 점검 스크립트로 강화
  - [ ] Git 설치 여부 확인
  - [ ] Node.js 설치 여부 확인
  - [ ] Codex CLI 설치 여부 확인
  - [ ] `.claude/settings.json` 존재 여부 확인
  - [ ] `CLAUDE.md` 존재 여부 확인
  - [ ] `BLUEPRINT.md` 존재 여부 확인
  - [ ] `docs/TASKS.md` 존재 여부 확인
  - [ ] `docs/USAGE_GUIDE.md` 존재 여부 확인
  - [ ] `.claude/skills/implementer/SKILL.md` 존재 여부 확인
  - [ ] `README.md`, `CLAUDE.md` 등에 placeholder가 남아 있는지 확인
  - [ ] 현재 상태에 따라 다음 행동 안내 출력
    - [ ] 새 프로젝트면 Claude Desktop/Web에서 설계부터 진행하도록 안내
    - [ ] 설계 완료 상태면 `/today` 또는 `/implementer`로 구현 진입 안내
    - [ ] Codex CLI가 없으면 Notion 동기화만 수동 처리 가능하다고 안내1


- [ ] `docs/TASKS.md` 운영 규칙 추가
  - [ ] 완료된 작업은 너무 길어지면 `docs/CHANGELOG.md` 또는 `docs/archive/`로 이동하는 규칙 추가
  - [ ] 작업 항목은 현재 / 다음 / 완료 중심으로 유지
  - [ ] 구현 중 발견사항은 바로 다음 작업 후보로 기록
  - [ ] 오래된 todo와 실제 구조가 어긋나지 않도록 정기 점검 규칙 추가


---

## 진행 중

---

## 완료

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
