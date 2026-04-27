# Usage Guide

> 파이프라인 사용법 전체 가이드

---

## 파이프라인 구조

```
Claude Desktop                GitHub
CLAUDE.md 작성      →      버전 관리
AGENTS.md 작성                  ↓
                             Codex
                         Notion 동기화
                                ↓
                          Claude Code
                       Agent Teams로 구현
```

| 도구           | 역할                                        |
| -------------- | ------------------------------------------- |
| Claude Desktop | CLAUDE.md / AGENTS.md 작성 및 설계          |
| Git            | 전체 버전 관리                              |
| Codex          | CLAUDE.md → Notion 자동 동기화              |
| Claude Code    | Agent Teams 기반 모듈별 구현                |

---

## 새 프로젝트 시작

### 체크리스트

```
□ STEP 1 — pipeline-template 클론
□ STEP 2 — setup.bat 실행
□ STEP 3 — Claude Desktop으로 CLAUDE.md / AGENTS.md / README.md 작성
□ STEP 4 — Git 커밋
□ STEP 5 — Codex로 Notion 동기화
□ STEP 6 — Claude Code에서 구현 시작
```

### STEP 1 — Use this template

```
GitHub에서 pipeline-template repo 열고:
"Use this template" → "Create a new repository"
→ 프로젝트 이름 입력 → Create repository → Git으로 clone
```

### STEP 3 — Claude Desktop으로 문서 작성

`templates/CLAUDE.root.template.md`를 참고해서 요청:

```
/planner

templates/CLAUDE.root.template.md 읽고,
아래 프로젝트 개요를 바탕으로 CLAUDE.md, AGENTS.md, README.md를 작성해줘:
[프로젝트 개요]
```

> `/planner` skill을 먼저 호출하면 Claude Desktop이 역할 경계를 인지한 상태에서 작업합니다.

**Module Map 반드시 작성:**

```markdown
| 모듈 | 역할 | 의존 모듈 | 실행 순서 | 병렬 가능 | 담당 teammate |
```

### STEP 4 — Git 커밋

```bash
git add .
git commit -m "init: 프로젝트 초기 설정"
git push
```

### STEP 5 — Codex로 Notion 동기화

```bash
cd [프로젝트 경로]
codex
```

```
CLAUDE.md를 읽고 아래 구조로 Notion 페이지를 작성해줘:
- Overview / Goals / Tech Stack / Module Map / Current Status / Key Decisions
```

### STEP 6 — Claude Code에서 구현

```
/implementer

CLAUDE.md와 AGENTS.md 읽고 구현 시작해줘.
```

---

## 작업 루틴

### 시작 전

```
1. CLAUDE.md 최신 상태 확인
2. 오늘 할 작업 범위 결정
3. 단일 세션 vs Agent Teams 판단
```

### 단일 세션 vs Agent Teams

**단일 세션** (토큰 절약):
- 한 모듈 안에서 끝나는 작업
- 간단한 버그 수정 / 리팩토링
- 파일 1~2개 수정

**Agent Teams**:
- 여러 모듈 동시 작업
- 병렬 처리 가능한 작업이 3개 이상
- 모듈 간 인터페이스를 함께 설계할 때

### Agent Teams 효율적으로 쓰기

- 작업 전 CLAUDE.md 반드시 최신화
- Module Map에서 담당 모듈 경계 명확히 구분
- Interface Contract 먼저 확정 후 작업 시작
- 의존성 있는 작업은 순서 지정 (`module-a 완료 후 → module-b 시작`)

**Team Lead 프롬프트 예시:**
```
# 좋은 예
module-a는 유저 입력 처리, module-b는 렌더링 담당.
각자 CLAUDE.md 읽고 독립적으로 구현 후 인터페이스만 맞춰줘.

# 나쁜 예
게임 만들어줘.
```

### 토큰 절약 팁

| 상황 | 방법 |
|------|------|
| 컨텍스트 창 길어짐 | `/clear` 후 CLAUDE.md 다시 읽히기 |
| 단순 반복 작업 | 단일 세션으로 처리 |
| 큰 파일 수정 | 변경 범위 미리 좁혀서 전달 |

### 종료 루틴

```
1. Git 커밋
2. CLAUDE.md Current Status 업데이트
3. 필요 시 Codex로 Notion 재동기화
```

---

## 자유 시작 (템플릿 없이)

템플릿 구조 없이 빠르게 시작하고 싶을 때.

**언제:** 아이디어 검증 / 프로토타입 / 단발성 작업

```bash
git init [프로젝트명]
cd [프로젝트명]
```

CLAUDE.md 최소 버전:

```markdown
# Project Context

## Overview
[한 줄 설명]

## Goals
- [목표]

## Tech Stack
- [기술]

## Current Status
- [지금 하려는 것]
```

이후 Claude Code 실행:

```bash
claude
```

> 나중에 구조가 필요해지면 `templates/` 참고해서 언제든 전환 가능.
