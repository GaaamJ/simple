# Skills

> `.claude/skills/`에 설치된 스킬 목록.
> Claude Code 채팅에서 `/스킬명`으로 호출합니다.

---

## 파이프라인 스킬

### `/planner`
**대상:** Claude Desktop  
Claude Desktop의 역할 경계와 hard stop을 인지시킵니다.  
설계·문서 작업만 수행하고 코드 작성은 하지 않는 상태로 진입.

**사용 시점:** Claude Desktop에서 CLAUDE.md / AGENTS.md 작성 시작 전

---

### `/documenter`
**대상:** Codex  
Codex의 역할 경계를 인지시킵니다.  
CLAUDE.md → Notion 동기화만 수행하고 설계 내용은 변경하지 않는 상태로 진입.

**사용 시점:** Codex에서 Notion 동기화 시작 전

---

### `/implementer`
**대상:** Claude Code  
Claude Code의 진입 순서와 teammate 운영 방식을 로드합니다.  
CLAUDE.md 읽기 → Codex 호출 → Module Map 확인 → teammate 생성 순서로 진행.

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
