# 아키텍처

> 사람용 번역본입니다. 기준본은 `docs/ARCHITECTURE.en.md`입니다.

이것은 워크플로우 환경(workflow environment)입니다 — AI 보조 개발을 위한 구조화된 컨텍스트입니다. Planner, Team Lead, Teammate 역할 사이에서 설계, 구현, 상태 추적이 어떻게 이동하는지 정의합니다. 애플리케이션 코드 템플릿이 아닙니다.

## 작업 흐름

```text
Planner
  -> CLAUDE.md, BLUEPRINT.md, 모듈별 CLAUDE.md 작성
  -> 각 모듈 CLAUDE.md와 함께 src/[module]/CHANGELOG.md 스텁 생성
  -> TODO.md에 예정 작업 기록

Team Lead
  -> 최소 구현 컨텍스트만 읽음
  -> 모듈 경계와 실행 순서 검증
  -> 직접 구현하거나 독립 모듈을 배정

Teammate
  -> 배정된 모듈 범위 안에서만 작업
  -> 결과를 Team Lead에게 반환

Team Lead
  -> 통합 검증
  -> TODO.md 갱신
  -> 모듈 완료 내용을 src/[module]/CHANGELOG.md에 기록
  -> 루트 CHANGELOG.md의 Module Summaries 갱신 (모듈별 최신 1–2항목 유지)
  -> 크로스모듈 또는 프로젝트 수준 변경은 루트 CHANGELOG.md에 기록
```

## 역할 경계
| 역할 | 담당 | 피해야 할 일 |
|---|---|---|
| Planner | 프로젝트 구조, 모듈 맵, 계약, 계획 문서 | 구현 코드 작성 |
| Team Lead | 검증, 실행 방식 결정, 통합, 최종 리뷰 | 부족한 계획을 전체 문서 스캔으로 추측 |
| Teammate | 배정된 모듈 구현 | 관련 없는 모듈 작업 |

## 핵심 파일
| 파일 | 목적 |
|---|---|
| `CLAUDE.md` | 짧은 프로젝트 컨텍스트와 AI 읽기 규칙 |
| `BLUEPRINT.md` | 실행 순서, 모듈 담당, 인터페이스 |
| `src/[module]/CLAUDE.md` | 모듈별 구현 계약 |
| `TODO.md` | 현재 작업만 기록: Today, Next, Blocked |
| `CHANGELOG.md` | 마스터 changelog: 프로젝트 수준 변경 + Module Summaries (모듈별 최신 1–2항목) |
| `src/[module]/CHANGELOG.md` | 모듈별 완료 작업 전체 기록 |

## 문서 분리
- 구조 설명은 이 문서에 둡니다.
- 사용 절차는 `docs/USAGE_GUIDE.ko.md`에 둡니다.
- 설치 절차는 `docs/SETUP_GUIDE.ko.md`에 둡니다.
- 명령어와 스킬 설명은 `docs/SKILLS.ko.md`에 둡니다.

## 컨텍스트 정책
- AI는 기본적으로 모든 문서를 읽지 않습니다.
- AI는 필요할 때 영어 문서를 우선 읽습니다.
- 한국어 문서는 사람용 번역본이며 사용자가 요청했을 때만 읽습니다.

## 용어 사전

| 용어 | 정의 |
|---|---|
| 워크플로우 환경 (workflow environment) | 이 저장소 구조와 AI 지침 파일 전체. 에이전트 역할 간의 설계, 구현, 상태 추적 방식을 정의합니다. |
| 루트 컨텍스트 (root context) | 에이전트가 프로젝트 상태를 파악하기 위해 읽는 최소 파일 집합: `CLAUDE.md`, `BLUEPRINT.md`, `TODO.md`, `CHANGELOG.md`. |
| 실행 청사진 (execution blueprint) | `BLUEPRINT.md` — 모듈 순서, 담당, 인터페이스를 정의하는 단계(Phase) 기반 실행 계획. |
| 모듈 계약 (module contract) | `src/[module]/CLAUDE.md` — 단일 모듈의 범위가 정해진 구현 계약. |
| Planner | 계획 문서를 작성하고 프로젝트 구조를 정의하는 에이전트 역할. 구현 코드를 작성하지 않습니다. |
| Team Lead | 범위를 검증하고 구현을 실행하거나 위임하며 결과를 통합하는 에이전트 역할. |
| Teammate | 배정된 단일 모듈 안에서만 작업하는 에이전트. 결과를 Team Lead에게 반환합니다. |
