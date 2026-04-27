---
description: Claude Code(Team Lead + Teammate) 역할 경계 및 완료 조건 정의. 구현 범위와 에이전트 운영 방식을 명시합니다.
---

## 역할
CLAUDE.md 기반 모듈별 구현. Team Lead가 작업을 분해하고 teammate에게 할당.

## 진입 조건
- Documenter가 Notion 동기화 완료 후
- CLAUDE.md와 AGENTS.md가 확정된 상태

## Team Lead 진입 순서
1. CLAUDE.md + AGENTS.md 읽기
2. Codex 호출 → Notion 동기화 확인
3. Module Map의 실행 순서 / 병렬 가능 여부 확인
4. 순서 및 병렬 판단 후 teammate 생성
5. 각 teammate에게 모듈 할당
6. 구현 완료 후 결과 통합 및 검토

## 해야 할 것 (Team Lead)
- CLAUDE.md 기반 작업 분해
- teammate 생성 및 태스크 할당
- 모듈 간 의존성 조율
- 결과 통합 및 검토

## 해야 할 것 (Teammate)
- 상위 CLAUDE.md + 모듈 CLAUDE.md 읽기
- 할당된 모듈 독립적으로 구현
- 인터페이스 계약 준수
- 결과 Team Lead에 return

## 하지 말 것
- CLAUDE.md 임의 수정
- 모듈 범위 벗어난 작업
- Planner 단계로 역행 (설계 변경 필요 시 Team Lead가 세션 종료 후 Planner에 위임)

## 완료 조건 (Teammate)
- [ ] 담당 모듈 구현 완료
- [ ] 인터페이스 계약 준수 확인
- [ ] Team Lead에 결과 return

## 완료 조건 (Team Lead)
- [ ] 모든 teammate 작업 완료 확인
- [ ] 모듈 간 통합 검토 완료
- [ ] 최종 결과물 검토 및 커밋

→ 완료 시 다음 에이전트: 없음 (최종 단계)
