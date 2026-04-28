# 아키텍처

> 사람용 번역본입니다. 기준본은 `docs/ARCHITECTURE.en.md`입니다.

이 템플릿은 애플리케이션 코드 템플릿이 아니라 AI 작업 흐름 템플릿입니다. Planner, Team Lead, Teammate가 어떤 문서를 기준으로 설계와 구현을 나누는지 정의합니다.

## 작업 흐름

```text
Planner
  -> CLAUDE.md, BLUEPRINT.md, 모듈별 CLAUDE.md 작성
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
  -> TODO.md와 CHANGELOG.md 갱신
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
| `CHANGELOG.md` | 완료된 작업 기록 |

## 문서 분리
- 구조 설명은 이 문서에 둡니다.
- 사용 절차는 `docs/USAGE_GUIDE.ko.md`에 둡니다.
- 설치 절차는 `docs/SETUP_GUIDE.ko.md`에 둡니다.
- 명령어와 스킬 설명은 `docs/SKILLS.ko.md`에 둡니다.

## 컨텍스트 정책
- AI는 기본적으로 모든 문서를 읽지 않습니다.
- AI는 필요할 때 영어 문서를 우선 읽습니다.
- 한국어 문서는 사람용 번역본이며 사용자가 요청했을 때만 읽습니다.
