# TODO

<!-- Active Work Queue -->

현재 작업에 집중. 완료된 항목은 `CHANGELOG.md`로 이동. 전략·결정 항목은 `BLUEPRINT.md`로.

---

## 정체성 및 포지셔닝

- [ ] GitHub 저장소 설명 업데이트 (필요 시)

## 루트 워크플로우 문서

- [x] 루트 문서에서 placeholder/기본값 제거하기
- [x] `[Project Name]`, `Goal 1`, `module-a`, `module-b` 등 placeholder 제거 또는 교체하기
- [x] `CLAUDE.md`를 이 저장소의 실제 루트 컨텍스트로 재작성하기
- [x] `BLUEPRINT.md`를 실제 실행 청사진으로 재작성하기
- [x] `TODO.md`를 활성 작업 대기열로 재작성하기
- [x] `CHANGELOG.md`를 현재 워크스페이스/프로젝트 이력으로 재작성하기
- [x] 루트 워크플로우 문서에 상태 레이블 추가하기:
  - [x] `CLAUDE.md`: Active Root Context
  - [x] `BLUEPRINT.md`: Active Execution Blueprint
  - [x] `TODO.md`: Active Work Queue
  - [x] `CHANGELOG.md`: Active History
- [x] `src/README.md` 추가하기 — `src/`를 언제 사용하고 언제 비워도 되는지 설명

## 예시 프로젝트

- [ ] `examples/` 추가하기
- [ ] `examples/minimal/` 생성하기
- [ ] 모든 일반 예시와 placeholder를 `examples/minimal/`로 이동하기
- [ ] 예시 `CLAUDE.md` 생성하기
- [ ] 예시 `BLUEPRINT.md` 생성하기
- [ ] 예시 `TODO.md` 생성하기
- [ ] 예시 `CHANGELOG.md` 생성하기
- [ ] 예시 `src/example-module/CLAUDE.md` 생성하기
- [ ] 예시 `src/example-module/CHANGELOG.md` 생성하기
- [ ] `examples/README.md` 추가하기 — 예시는 참고용이며 루트 파일이 실제 워크플로우 환경임을 명시
- [ ] 예시가 루트 워크플로우 상태와 충돌하지 않도록 확인하기

## 닥터 스크립트

- [ ] `scripts/doctor.bat` 추가하기
- [ ] `scripts/doctor.sh` 추가하기
- [ ] 문서 경로 확인하기
- [ ] README 링크 확인하기
- [ ] docs 언어 쌍 확인하기
- [ ] 루트 워크플로우 파일 존재 확인:
  - [ ] `CLAUDE.md`
  - [ ] `BLUEPRINT.md`
  - [ ] `TODO.md`
  - [ ] `CHANGELOG.md`
- [ ] `.claude/skills/today/SKILL.md` 확인하기
- [ ] `.claude/skills/implementer/SKILL.md` 확인하기
- [ ] `CLAUDE.md` 참조가 실제 파일을 가리키는지 확인하기
- [ ] `README.md` 참조가 실제 파일을 가리키는지 확인하기
- [ ] `TODO.md`에 활성 워크플로우 섹션이 있는지 확인하기
- [ ] `examples/minimal/`에 필수 예시 파일이 있는지 확인하기
- [ ] 루트 문서에 해결되지 않은 placeholder 발견 시 경고하기
- [ ] `examples/` 또는 명시적으로 표시된 샘플 파일 내에서만 placeholder 허용하기
- [ ] "template", "starter", "boilerplate" 표현이 허용된 맥락 외에 등장하면 경고하기
- [ ] 영어/한국어 문서 쌍이 누락된 경우 경고하기
- [ ] 명확한 pass/fail 요약 출력하기

## 문서 정리

- [ ] 모든 docs에서 오래된 템플릿 지향 언어 감사하기
- [ ] 아키텍처 문서를 워크플로우 환경 관점으로 업데이트하기
- [ ] 설정 가이드를 워크플로우 환경 초기화 방법으로 업데이트하기
- [ ] 사용 가이드를 일상적인 워크플로우 운영 방법으로 업데이트하기
- [ ] 스킬 가이드를 `/today`와 `/implementer` 사용법 위주로 업데이트하기
- [ ] 용어 사전 추가:
  - [ ] workflow environment
  - [ ] root context
  - [ ] execution blueprint
  - [ ] active work queue
  - [ ] module context
  - [ ] project changelog
  - [ ] workflow changelog

## 릴리스 워크플로우

- [ ] GitHub Releases 흐름 생성하기
- [ ] 워크플로우 채인지로그와 프로젝트 채인지로그 분리하기
- [ ] `WORKFLOW_CHANGELOG.md` 추가하기 — 이 저장소 자체의 발전 이력용
- [ ] 루트 `CHANGELOG.md`는 활성 워크스페이스/프로젝트 이력용으로 유지하기
- [ ] 릴리스 노트 템플릿 추가하기

## 선택적 통합

- [ ] `integrations/notion/` 추가하기 (통합하기로 결정 시)
- [ ] `integrations/notion/README.md` 추가하기
- [ ] 예시 Notion 스키마 또는 동기화 매핑 추가하기
- [ ] 구현이 없는 경우 통합 문서를 선택적(optional)으로 표시하기
