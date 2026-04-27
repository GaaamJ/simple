# pipeline-template

> Claude Desktop + Codex + Claude Code를 연결하는 범용 프로젝트 파이프라인 템플릿

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

---

## 도구별 역할

| 도구           | 역할                                        |
| -------------- | ------------------------------------------- |
| Claude Desktop | CLAUDE.md / AGENTS.md 작성 및 설계          |
| Git            | 전체 버전 관리 (파이프라인 + 프로젝트 파일) |
| Codex          | CLAUDE.md → Notion 자동 동기화              |
| Claude Code    | Agent Teams 기반 모듈별 구현                |

---

## 빠른 시작

### 처음 사용하는 경우

→ `docs/SETUP_GUIDE.md` 참고

### 새 프로젝트 시작

**STEP 1 — Use this template**

```
이 repo 상단 "Use this template" 버튼 클릭
→ "Create a new repository"
→ 프로젝트 이름 입력 (예: my-game)
→ Create repository
→ Git으로 clone
```

**STEP 2 — 프로젝트 파일 생성**

```
Unity Hub → New Project
Location: [clone한 폴더]/src/
```

→ 이후 `docs/NEW_PROJECT_GUIDE.md` 참고

### 템플릿 없이 빠르게 시작

→ `docs/FREE_START_GUIDE.md` 참고

---

## 폴더 구조

```
pipeline-template/
├── README.md                        ← 이 파일
├── CLAUDE.md                        ← 전체 프로젝트 컨텍스트
├── AGENTS.md                        ← 에이전트 역할 정의
├── setup.bat                        ← 환경 셋업 및 Agent Teams 활성화
├── .claude/
│   └── settings.json                ← Claude Code 설정
├── templates/
│   ├── CLAUDE.root.template.md      ← 최상위 CLAUDE.md 작성 가이드
│   └── CLAUDE.module.template.md    ← 모듈별 CLAUDE.md 작성 가이드
├── docs/
│   ├── SETUP_GUIDE.md               ← 새 환경 최초 셋업
│   ├── NEW_PROJECT_GUIDE.md         ← 새 프로젝트 시작 루틴
│   ├── PROJECT_START_GUIDE.md       ← 작업 시작 + 토큰 효율 가이드
│   └── FREE_START_GUIDE.md          ← 템플릿 없이 자유 시작
└── src/                             ← 실제 프로젝트 파일 (Claude Code가 CLAUDE.md 기반으로 생성)
```

---

## 주요 개념

### CLAUDE.md

Claude Code가 프로젝트 컨텍스트를 파악하는 핵심 파일.

- 루트: 전체 프로젝트 개요, 모듈 맵, 의존성
- 모듈별: 해당 모듈의 역할, 인터페이스, 담당 범위

### Agent Teams

여러 모듈을 동시에 작업할 때 사용하는 Claude Code 멀티 에이전트 기능.
Team Lead가 작업을 분배하고 각 teammate가 독립적으로 구현 후 결과를 통합.

> 토큰 사용량이 높으므로 단순 작업은 단일 세션 사용 권장.
> → `docs/PROJECT_START_GUIDE.md` 참고

### 새 프로젝트 = 이 repo clone

파이프라인 구조를 매번 새로 만들 필요 없이 clone 후 CLAUDE.md만 채우면 바로 시작 가능.

---

## 참고 문서

- [Claude Code 공식 문서](https://claude.ai/code)
- [Agent Teams 가이드](https://code.claude.com/docs/en/agent-teams)
