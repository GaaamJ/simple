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

## 참고 문서

- [Claude Code 공식 문서](https://claude.ai/code)
- [Agent Teams 가이드](https://code.claude.com/docs/en/agent-teams)
