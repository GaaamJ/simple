# Skills

> `.claude/skills/`에 설치된 스킬 목록.
> Claude Code 채팅에서 `/스킬명`으로 호출합니다.

---

## 파이프라인 스킬

### `/documenter`
**대상:** Codex  
Codex의 역할 경계를 인지시킵니다.  
CLAUDE.md → Notion 동기화만 수행하고 설계 내용은 변경하지 않는 상태로 진입.

**사용 시점:** Codex에서 Notion 동기화 시작 전

---

### `/today`
**대상:** Claude Code  
`docs/TASKS.md`를 읽고 오늘 할 일을 브리핑합니다.  
지금 할 것 / 다음에 할 것 / 완료 섹션을 요약하고, 바로 시작 가능한 작업 1~3개와 각 작업별 읽어야 할 파일 목록을 안내합니다.

**사용 시점:** 세션 시작 시

---

### `/implementer`
**대상:** Claude Code  
인수인계 문서 검증 → 구현 방식 확정 → 구현 순서로 진행합니다.  
각 단계마다 사용자 확인을 거칩니다.

- **1단계:** 루트 `CLAUDE.md` + 모듈별 `CLAUDE.md` 품질 검증. 문제 있으면 Planner로 되돌림.
- **2단계:** 실행 순서, 단일 세션 vs worktree 결정, 리스크 제시.
- **3단계:** 승인 후 구현 실행.

**사용 시점:** Claude Code에서 구현 시작 전

---

## 유틸리티 스킬

### `/grill-me`
**출처:** mattpocock/skills  
계획이나 설계를 집중적으로 검토합니다.  
결정 트리의 각 분기를 하나씩 짚어가며 설계의 빈틈을 찾아냅니다.

**사용 시점:** CLAUDE.md 작성 후 설계를 stress-test 하고 싶을 때

---

## 스킬 추가하기

### 직접 작성

`.claude/skills/[스킬명]/SKILL.md` 파일 생성:

```markdown
---
description: 한 줄 설명 (AI가 트리거 판단에 사용)
---

## 역할
...

## 사용 방법
...
```

### mattpocock/skills에서 가져오기

```bash
npx skills@latest add mattpocock/skills/[스킬명]
```

> 설치 위치: `.claude/[스킬명]/`
