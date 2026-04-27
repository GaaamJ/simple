# New Project Guide

> 새 프로젝트 시작할 때마다 이 순서대로 진행합니다.

---

## 체크리스트

```
□ STEP 1 — pipeline-template 클론
□ STEP 2 — setup.bat 실행
□ STEP 3 — CLAUDE.md 내용 채우기
□ STEP 4 — 모듈 구조 설계
□ STEP 5 — Git 커밋
□ STEP 6 — Codex로 Notion 동기화
□ STEP 7 — Claude Code 실행
```

---

## STEP 1 — Use this template

GitHub에서 pipeline-template repo 열고:

```
"Use this template" 버튼 클릭
→ "Create a new repository"
→ 프로젝트 이름 입력 (예: my-game)
→ Create repository
→ Git으로 clone
```

---

## STEP 2 — 프로젝트 파일 생성

Unity의 경우:

```
Unity Hub → New Project
Location: [clone한 폴더]\src\
```

다른 프로젝트의 경우 `src/` 폴더 안에 생성.

---

## STEP 3 — CLAUDE.md 내용 채우기

`templates/CLAUDE.root.template.md` 참고해서 루트 `CLAUDE.md` 작성.

Claude Desktop 활용 권장:

```
이 프로젝트 개요를 바탕으로 CLAUDE.md를 작성해줘: [개요 설명]
```

---

## STEP 4 — 모듈 구조 설계

필요한 모듈 수만큼 폴더 생성:

```
src/
├── module-a/
│   └── CLAUDE.md    ← templates/CLAUDE.module.template.md 복사 후 작성
└── module-b/
    └── CLAUDE.md
```

모듈 간 의존성은 루트 `CLAUDE.md`의 Module Map에 반드시 기록.

---

## STEP 5 — Git 커밋

```bash
git add .
git commit -m "init: 프로젝트 초기 설정"
git push
```
> GUI 사용 시 GitHub Desktop / GitKraken / SourceTree 등 자유롭게 사용.

---

## STEP 6 — Codex로 Notion 동기화

Codex에서:

```
CLAUDE.md를 읽고 아래 구조로 Notion 페이지를 작성해줘:
- Overview / Goals / Tech Stack / Module Map / Current Status / Key Decisions
```

---

## STEP 7 — Claude Code 실행

```bash
cd C:\[프로젝트 경로]
claude
```

작업 시작 전 `PROJECT_START_GUIDE.md` 참고 권장.

---

## 최종 폴더 구조

```
my-project/
├── CLAUDE.md
├── AGENTS.md
├── setup.bat
├── .claude/
│   └── settings.json
├── templates/
│   ├── CLAUDE.root.template.md
│   └── CLAUDE.module.template.md
├── docs/
│   ├── SETUP_GUIDE.md
│   ├── NEW_PROJECT_GUIDE.md
│   ├── PROJECT_START_GUIDE.md
│   └── FREE_START_GUIDE.md
└── src/                  ← Claude Code가 CLAUDE.md 기반으로 모듈 구조 생성
```
