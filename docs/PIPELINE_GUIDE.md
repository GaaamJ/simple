# Pipeline Guide

> Claude Desktop + Codex + Claude Code를 연결하는 파이프라인 구조 설명

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

---

## Claude Code 진입 후 흐름

Claude Code는 아래 순서로 작업합니다.

```
Claude Code 진입
    ↓
1. CLAUDE.md + AGENTS.md 읽기
2. Codex 호출 → Notion 동기화 (구현 전 문서화 먼저)
3. Module Map의 실행 순서 / 병렬 가능 여부 확인
4. 순차 / 병렬 판단 후 teammate 생성
5. 각 teammate가 모듈 독립 구현
6. Team Lead 통합 및 검토
```

**Codex 호출 명령:**
```bash
cd [프로젝트 경로]
codex
# 프롬프트: "CLAUDE.md를 읽고 Notion 페이지를 업데이트해줘"
```

**teammate 생성 프롬프트 예시:**
```
Module Map 기준으로 실행 순서와 병렬 가능 여부 확인 후
각 모듈 담당 teammate 생성해줘.
각자 해당 모듈의 CLAUDE.md 읽고 독립적으로 작업 후 결과 공유해.
```

---

## 에이전트 역할 경계 (skills)

각 에이전트의 역할 경계와 hard stop은 `.claude/skills/`에 정의되어 있습니다.

| skill | 대상 에이전트 | 호출 |
|---|---|---|
| planner | Claude Desktop | `/planner` |
| documenter | Codex | `/documenter` |
| implementer | Claude Code | `/implementer` |

---

## 템플릿 폴더 구조

```
pipeline-template/
├── README.md                        ← 프로젝트 README 플레이스홀더
├── CLAUDE.md                        ← 전체 프로젝트 컨텍스트
├── AGENTS.md                        ← 에이전트 역할 정의
├── setup.bat                        ← 환경 셋업 및 Agent Teams 활성화
├── .claude/
│   ├── settings.json                ← Claude Code 설정
│   └── skills/
│       ├── planner/SKILL.md         ← Claude Desktop 역할 경계
│       ├── documenter/SKILL.md      ← Codex 역할 경계
│       └── implementer/SKILL.md     ← Claude Code 역할 경계
├── templates/
│   ├── CLAUDE.root.template.md      ← 최상위 CLAUDE.md 작성 가이드
│   └── CLAUDE.module.template.md    ← 모듈별 CLAUDE.md 작성 가이드
├── docs/
│   ├── SETUP_GUIDE.md               ← 새 환경 최초 셋업
│   ├── NEW_PROJECT_GUIDE.md         ← 새 프로젝트 시작 루틴
│   ├── PROJECT_START_GUIDE.md       ← 작업 시작 + 토큰 효율 가이드
│   ├── FREE_START_GUIDE.md          ← 템플릿 없이 자유 시작
│   └── PIPELINE_GUIDE.md            ← 파이프라인 구조 설명 (이 파일)
└── src/                             ← 실제 프로젝트 파일 (Claude Code가 CLAUDE.md 기반으로 생성)
```

---

## 참고 문서

- [Claude Code 공식 문서](https://claude.ai/code)
- [Agent Teams 가이드](https://code.claude.com/docs/en/agent-teams)
