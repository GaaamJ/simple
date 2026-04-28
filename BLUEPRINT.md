# Blueprint

<!-- Active Execution Blueprint -->

`CLAUDE.md`는 이 환경이 무엇인지 설명한다. 이 파일은 작업을 어떤 순서로 실행하는지 정의한다.

## Execution Flow

```text
Phase 1: Identity & Positioning       (완료 중)
    -> Phase 2: Root Workflow Docs    (현재)
    -> Phase 3: Example Project       (다음)
        -> Phase 4: Doctor Scripts    (Phase 3 완료 후)
Phase 5: Documentation Cleanup        (Phase 1–4 완료 후)
Phase 6: Release Workflow             (Phase 5 완료 후)
```

## Phase Overview

| Phase | 이름 | 선행 조건 | 병렬 가능 |
|---|---|---|---|
| 1 | Identity & Positioning | — | N |
| 2 | Root Workflow Documents | Phase 1 | N |
| 3 | Example Project | Phase 2 | Y (with 4) |
| 4 | Doctor Scripts | Phase 2 | Y (with 3) |
| 5 | Documentation Cleanup | Phase 1–4 | N |
| 6 | Release Workflow | Phase 5 | N |

## Module Map

현재 `src/` 모듈 없음. 모듈이 추가되면 아래 테이블을 채운다.

| Module | Owner | Prerequisites | Parallel Group |
|---|---|---|---|
| _(없음)_ | — | — | — |

## Module Interfaces

모듈이 없으므로 인터페이스 계약 없음.

## Implementation Rules

- 이 파일은 실행 순서, 모듈 경계, 데이터 계약이 필요할 때만 읽는다.
- 관련 없는 모듈이나 범위로 확장하지 않는다.
- 모듈 계약이 누락된 경우 모든 docs를 스캔하는 대신 플래닝으로 돌아간다.
- 상세 아키텍처는 `docs/ARCHITECTURE.en.md`에 유지; 이 파일은 실행에만 집중.

## Done Criteria

- [ ] 루트 워크플로우 문서 재작성 완료 (CLAUDE.md, BLUEPRINT.md, TODO.md, CHANGELOG.md)
- [ ] `examples/minimal/` 예시 파일 일체 완성
- [ ] `scripts/doctor.sh` / `doctor.bat` pass/fail 검증 통과
- [ ] docs 전체 감사 및 템플릿 지향 언어 제거 완료
- [ ] GitHub Releases 흐름 정의 및 `WORKFLOW_CHANGELOG.md` 생성
- [ ] 최종 결과 검토 및 커밋
