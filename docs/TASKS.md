# Tasks

> pipeline-template 프로젝트의 현재 작업 목록

---

## 다음 세션에 할 것

- [ ] `/today` 또는 `/todo` skill 추가
  - [ ] 작업 시작 시 `docs/TASKS.md`를 먼저 읽도록 구성
  - [ ] 현재 진행 중 / 다음 작업 / 완료 항목을 구분해서 요약하도록 구성
  - [ ] 오늘 바로 가능한 작업 1~3개만 추천하도록 구성
  - [ ] 각 작업별로 읽어야 할 파일 목록을 함께 안내하도록 구성
  - [ ] 작업 종료 시 `docs/TASKS.md` 업데이트를 권장하도록 구성

- [ ] `/implementer` skill 수정
  - [ ] 바로 Agent Teams를 생성하지 않도록 수정
  - [ ] 먼저 `CLAUDE.md`를 읽고 전체 프로젝트 맥락을 확인하도록 수정
  - [ ] `docs/TASKS.md`를 읽고 현재 작업 큐를 확인하도록 수정
  - [ ] `CLAUDE.md`의 Module Map을 확인하도록 수정
  - [ ] 관련 `src/[module]/CLAUDE.md`만 선별해서 읽도록 수정
  - [ ] 구현 시작 전 작업 계획을 사용자에게 먼저 제시하도록 수정
  - [ ] 단일 세션으로 처리할지 Agent Teams로 분기할지 판단 기준 추가
  - [ ] 구현 중 발견한 문제점 / 개선 방향을 `docs/TASKS.md`에 역으로 기록하도록 안내

- [ ] `docs/ARCHITECTURE.md` 추가
  - [ ] 이 템플릿이 코드 템플릿이 아니라 AI 작업 운영 템플릿임을 명시
  - [ ] 전체 작업 흐름 명시: 설계 → 인수인계 → 구현 → 발견사항 기록 → 다음 설계
  - [ ] 각 파일의 역할 정리
    - [ ] `CLAUDE.md`: 프로젝트 전체 맥락 정본
    - [ ] `docs/TASKS.md`: 현재 작업 큐 정본
    - [ ] `src/[module]/CLAUDE.md`: 모듈별 구현 인수인계 정본
    - [ ] `AGENTS.md`: 역할 / 완료 조건
    - [ ] `docs/USAGE_GUIDE.md`: 사람이 읽는 운영법
  - [ ] Claude Desktop/Web, Claude Code, Codex의 역할 경계 명시
  - [ ] Planner / Implementer / Team Lead / Teammate의 책임 범위 명시

- [ ] `docs/INTERFACES.md` 추가 검토
  - [ ] 모듈 간 입출력 계약을 별도 문서로 둘지 결정
  - [ ] 병렬 작업 시 모듈 간 필드명 / 데이터 구조 불일치 방지 목적 명시
  - [ ] `CLAUDE.md` Module Map과의 관계 정리
  - [ ] 인터페이스 변경 시 업데이트해야 할 문서 목록 명시
  - [ ] 예시 interface contract 추가

- [ ] `setup.bat`를 초기화 스크립트가 아니라 상태 점검 스크립트로 강화
  - [ ] Git 설치 여부 확인
  - [ ] Node.js 설치 여부 확인
  - [ ] Codex CLI 설치 여부 확인
  - [ ] `.claude/settings.json` 존재 여부 확인
  - [ ] `CLAUDE.md` 존재 여부 확인
  - [ ] `AGENTS.md` 존재 여부 확인
  - [ ] `docs/TASKS.md` 존재 여부 확인
  - [ ] `docs/USAGE_GUIDE.md` 존재 여부 확인
  - [ ] `.claude/skills/implementer/SKILL.md` 존재 여부 확인
  - [ ] `README.md`, `CLAUDE.md` 등에 placeholder가 남아 있는지 확인
  - [ ] 현재 상태에 따라 다음 행동 안내 출력
    - [ ] 새 프로젝트면 Claude Desktop/Web에서 설계부터 진행하도록 안내
    - [ ] 설계 완료 상태면 `/today` 또는 `/implementer`로 구현 진입 안내
    - [ ] Codex CLI가 없으면 Notion 동기화만 수동 처리 가능하다고 안내

- [ ] `documenter` skill 삭제 또는 역할 변경
  - [ ] Codex에서 slash command 미지원이므로 skill로 유지할지 재검토
  - [ ] 삭제 시 `.claude/skills/documenter/` 제거
  - [ ] `docs/SKILLS.md`에서 `/documenter` 항목 제거
  - [ ] Notion 동기화용 지침은 `docs/USAGE_GUIDE.md` 또는 `docs/NOTION_SYNC.md`로 이동
  - [ ] Codex용 복붙 프롬프트 형태로 보존

- [ ] `docs/SKILLS.md` 정리
  - [ ] 실제 사용 가능한 skill만 남기기
  - [ ] `/planner`, `/documenter`처럼 현재 환경에서 직접 실행되지 않는 항목 제거 또는 별도 섹션으로 이동
  - [ ] `/today`, `/todo`, `/implementer`의 사용 시점 정리
  - [ ] 각 skill이 읽어야 하는 파일 순서 명시
  - [ ] 각 skill이 수정 가능한 파일 범위 명시

- [ ] `docs/TASKS.md` 운영 규칙 추가
  - [ ] 완료된 작업은 너무 길어지면 `docs/CHANGELOG.md` 또는 `docs/archive/`로 이동하는 규칙 추가
  - [ ] 작업 항목은 현재 / 다음 / 완료 중심으로 유지
  - [ ] 구현 중 발견사항은 바로 다음 작업 후보로 기록
  - [ ] 오래된 todo와 실제 구조가 어긋나지 않도록 정기 점검 규칙 추가

- [ ] 모듈별 `CLAUDE.md` 인수인계 흐름 점검
  - [ ] Claude Desktop/Web에서 설계한 내용이 `src/[module]/CLAUDE.md`로 충분히 전달되는지 확인
  - [ ] Claude Code가 모듈별 `CLAUDE.md`만 보고 구현 가능한지 확인
  - [ ] 결합되어야 하는 모듈들이 서로 참조 가능한지 확인
  - [ ] 모듈 간 의존성이 `CLAUDE.md` Module Map 또는 `docs/INTERFACES.md`에 반영되는지 확인
  - [ ] 구현 단계에서 드러난 문제점이 다시 `docs/TASKS.md`로 돌아오는지 확인

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
