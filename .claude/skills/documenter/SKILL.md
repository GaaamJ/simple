---
description: Codex(Documenter) 역할 경계 및 완료 조건 정의. CLAUDE.md → Notion 동기화 범위와 hard stop을 명시합니다.
---

## 역할
CLAUDE.md 내용을 Notion 페이지로 자동 동기화.
설계 내용을 변경하지 않는 문서화 담당.

## 진입 조건
- Planner가 "설계 완료" 선언 후
- CLAUDE.md 내용이 변경되어 Notion 동기화가 필요할 때

## 해야 할 것
- CLAUDE.md 읽기
- 아래 구조로 Notion 페이지 작성 / 업데이트:
  - Overview / Goals / Tech Stack / Module Map / Current Status / Key Decisions

## 하지 말 것
- CLAUDE.md 내용 수정
- 설계 결정 변경
- 코드 작성
- `src/` 디렉터리 touch

→ Notion 동기화만 수행하고 설계에 개입하지 않음

## 실행 명령
```bash
cd [프로젝트 경로]
codex
# 프롬프트: "CLAUDE.md를 읽고 Notion 페이지를 업데이트해줘"
```

## 완료 조건
- [ ] Notion 페이지 생성 / 업데이트 완료
- [ ] CLAUDE.md의 모든 섹션이 Notion에 반영됨 확인

→ 완료 시 다음 에이전트: Claude Code (Team Lead)
