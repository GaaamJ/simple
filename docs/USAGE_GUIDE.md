# Usage Guide

> 파이프라인 사용법 전체 가이드

---

## 파이프라인 구조

```
Claude Desktop                GitHub
CLAUDE.md 작성      →      버전 관리
BLUEPRINT.md 작성                  ↓
                             Codex
                         Notion 동기화
                                ↓
                          Claude Code
                       Agent Teams로 구현
```

| 도구           | 역할                                        |
| -------------- | ------------------------------------------- |
| Claude Desktop | CLAUDE.md / BLUEPRINT.md 작성 및 설계          |
| Git            | 전체 버전 관리                              |
| Codex          | CLAUDE.md → Notion 자동 동기화              |
| Claude Code    | Agent Teams 기반 모듈별 구현                |

---

## 새 프로젝트 시작

### 체크리스트

```
□ STEP 1 — pipeline-template 클론
□ STEP 2 — setup.bat 실행
□ STEP 3 — Claude Desktop으로 CLAUDE.md / BLUEPRINT.md / README.md 작성
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

#### Claude Desktop Project 설정 (최초 1회)

역할 경계를 자동으로 강제하려면 Claude Desktop Project를 만들어두세요.

```
Claude Desktop → Projects → New Project
→ Instructions에 templates/PLANNER_PROJECT.md 내용 붙여넣기
→ MCP 파일시스템 연결 (프로젝트 경로)
```

이후 해당 Project의 모든 채팅에 Planner 역할 제한이 자동 적용됩니다.

#### 문서 작성 요청

Project 채팅에서:

```
templates/CLAUDE.root.template.md 읽고,
아래 프로젝트 개요를 바탕으로 CLAUDE.md, BLUEPRINT.md, README.md를 작성해줘:
[프로젝트 개요]
```

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
/implementer [구현할 기능 또는 모듈명]
```

3단계로 진행됩니다:
1. 인수인계 문서 품질 검증 → 사용자 확인
2. 구현 방식 검토 (순서, worktree 여부, 리스크) → 사용자 승인
3. 구현 실행

문서가 불완전하면 1단계에서 Planner로 되돌려집니다.

---

## 작업 루틴

### 시작 전

```
1. /today 로 오늘 할 작업 확인
2. /implementer [기능명] 으로 구현 진입
```

단일 세션 vs worktree 판단은 `/implementer` 2단계에서 Module Map 기반으로 자동 결정됩니다.

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
