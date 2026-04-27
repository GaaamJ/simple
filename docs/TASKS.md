# Tasks

> pipeline-template 프로젝트의 현재 작업 목록

---

## 다음 세션에 할 것

- [ ] 토큰 절약 구조로 변경
- [ ] skills에 today's todo list / todo list 체크 기능 추가 -> 항상 todo list를 업데이트 한 뒤 클로드 데스크탑/웹이 작업 시작 전, 무엇을 해야 하는지 사용자에게 알려주도록 구성
- [ ] mattpocock/skills 전체 가져오고 SKILLS.md 한국어로 번역
- [ ] documenter skill 삭제 (Codex에서 slash command 미지원 → planner와 같은 이유)
- [ ] 현재 아키텍처 docs에 명시
- [ ] Notion 작성용 지침 사항 명시
- [ ] 추후 문서화 삭제. (단 사용자가 사용할 수는 있게 가이드라인에 적어 둘 것. 현재는 떼는 게 범용성에 나을 것이라 판단.)
- [ ] 현재 흐름이 클로드 데스크탑/웹에서 아이디어 구체화 -> 코드에서 구현 이 방향인데, 이 때 중간 인수인계를 각 src의 CLAUDE.md로 진행하는 흐름이 맞는지 체크
- [ ] 결합되어야 하는 모듈들이 있다면 서로 참조 가능한지 체크
- [ ] implementer 명령어를 수정해서 중간 인수인계 파일들을 체크하고 구현 방향성을 제시하는 진입점으로 제작.
- [ ] implementer 명령어 이후 미구현된 것 중 어느 것부터 제작할지 진입점 필요
- [ ] 구현 단계에서 드러난 문제점 및 개선 사항 및 방향성을 CLAUDE CODE에서 구현하므로, 이 방향성을 역으로 todo list 및 todo에 넘겨 준 뒤, 다시 클로드 데스크탑/웹에서 이를 인수인계받아 다음 작업으로 자연스럽게 이어가는 파이프라인으로 재구성
- [ ] grillme 삭제하고 mattpocock/skills 쪽에서 그냥 다 받아오게 변경

---

## 진행 중

- [ ] "Use this template"으로 새 repo 생성 후 파이프라인 전체 검증
  - Claude Desktop Project 설정 (PLANNER_PROJECT.md 붙여넣기 + MCP 경로)
  - Claude Desktop에서 CLAUDE.md / AGENTS.md / 모듈별 CLAUDE.md / README.md 작성
  - Codex → Notion 동기화 확인
  - Claude Code → `/implementer` 로 구현 시작 및 Agent Teams 동작 확인

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
