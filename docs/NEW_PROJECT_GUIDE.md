# New Project Guide

> 새 프로젝트 시작할 때마다 이 순서대로 진행합니다.

---

## 체크리스트

```
□ STEP 1 — pipeline-template 클론
□ STEP 2 — setup.bat 실행
□ STEP 3 — Claude Desktop으로 CLAUDE.md / AGENTS.md / README.md 작성 (모듈 구조 포함)
□ STEP 4 — Git 커밋
□ STEP 5 — Codex로 Notion 동기화
□ STEP 6 — Claude Code에서 구현 시작
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

## STEP 3 — Claude Desktop으로 CLAUDE.md / AGENTS.md / README.md 작성

`templates/CLAUDE.root.template.md`를 참고해서 Claude Desktop에 요청:

```
templates/CLAUDE.root.template.md 읽고,
아래 프로젝트 개요를 바탕으로 CLAUDE.md를 작성해줘: [개요 설명]
```

**Module Map을 반드시 작성해야 합니다.**
Claude Code가 이 정보를 바탕으로 모듈 구조를 생성합니다.

```markdown
## Module Map
| 모듈 | 역할 | 의존 모듈 |
|------|------|-----------|
| module-a | ... | none |
| module-b | ... | module-a |
```

AGENTS.md도 함께 업데이트:
```
AGENTS.md에서 각 teammate의 담당 모듈을 Module Map에 맞게 수정해줘.
```

README.md도 함께 작성:
```
README.md의 [Project Name], [한 줄 설명], 기술 스택, 폴더 구조를 프로젝트에 맞게 채워줘.
```

---

## STEP 4 — Git 커밋

```bash
git add .
git commit -m "init: 프로젝트 초기 설정"
git push
```
> GUI 사용 시 GitHub Desktop / GitKraken / SourceTree 등 자유롭게 사용.

---

## STEP 5 — Codex로 Notion 동기화

```bash
cd [프로젝트 경로]
codex
```

Codex에서:

```
CLAUDE.md를 읽고 아래 구조로 Notion 페이지를 작성해줘:
- Overview / Goals / Tech Stack / Module Map / Current Status / Key Decisions
```

---

## STEP 6 — Claude Code에서 구현 시작

VSCode에서 프로젝트 폴더를 열고 Claude Code 채팅창에서:

```
CLAUDE.md와 AGENTS.md 읽고 구현 시작해줘.
```

작업 방식은 `PROJECT_START_GUIDE.md` 참고.

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
│   ├── FREE_START_GUIDE.md
│   └── PIPELINE_GUIDE.md
└── src/                  ← Claude Code가 CLAUDE.md 기반으로 모듈 구조 생성
```
