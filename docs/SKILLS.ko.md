# 스킬

> 사람용 번역본입니다. 기준본은 `docs/SKILLS.en.md`입니다.

명령어 설명은 이 문서에만 자세히 둡니다. 다른 문서에서는 이 문서로 링크합니다.

## 주요 일일 스킬

### `/today`
세션 시작 시 바로 할 작은 작업을 고를 때 사용합니다.

읽는 파일:
- `TODO.md`
- `CHANGELOG.md`
- 의존성이 불명확할 때만 `BLUEPRINT.md`

하지 않는 일:
- 구현
- 전체 문서 읽기
- `_internal/` 읽기
- 요청 없는 한국어 문서 읽기

**언제 사용하나:**
- 세션을 열었는데 다음 작업이 불확실할 때
- 오랜 공백 후 구현 전에 프로젝트 상태를 다시 파악할 때
- 현재 프로젝트 상태를 간결하게 요약해서 보고 싶을 때

### `/implementer`
이름이 정해진 작업, 기능, 모듈을 구현할 때 사용합니다.

읽는 파일:
- `CLAUDE.md`
- `BLUEPRINT.md`
- `TODO.md`
- 관련 `src/[module]/CLAUDE.md`
- `src/[module]/CHANGELOG.md` — 모듈 작업 시작 전 항상
- 루트 `CHANGELOG.md` — 크로스모듈 또는 프로젝트 수준 컨텍스트가 필요할 때만

작업 완료 후 `src/[module]/CHANGELOG.md`에 기록하고, 루트 `CHANGELOG.md`의 Module Summaries 항목을 동기화합니다.

하지 않는 일:
- 관련 없는 모듈 읽기
- 관련 없는 모듈 수정
- `_internal/` 읽기
- 같은 주제의 영어/한국어 문서 동시 읽기

**언제 사용하나:**
- `/today`가 특정 작업을 식별한 직후 구현할 때
- 모듈 이름이나 작업 설명이 명확하게 준비됐을 때
- 새 기능, 버그 수정, 모듈 업데이트 등 범위가 정해진 모든 구현 작업

**일반적인 세션 흐름:**
```text
/today              -> 다음 작업 식별
/implementer [작업] -> 구현
                    -> 체인지로그와 TODO.md 갱신
```

---

## 기타 스킬

### `/retire-module`
더 이상 필요 없는 모듈을 정리할 때 사용합니다.

읽는 파일:
- `CLAUDE.md`
- `BLUEPRINT.md`
- `TODO.md`
- 대상 모듈의 `src/[module]/CLAUDE.md`와 `src/[module]/CHANGELOG.md`
- 의존성 스캔을 위한 `src/[other-module]/CLAUDE.md`

3단계로 진행: 의존성 체크 → 계획 수립(사용자 확인 대기) → 실행.

실행 순서: 워크플로우 파일 수정 → 코드 삭제 → `CLAUDE.md`와 `CHANGELOG.md`를 `_archive/[module]/`에 아카이브.

하지 않는 일:
- 블로킹 의존성이 해결되지 않은 상태에서 진행
- `_archive/` 파일 수정 또는 삭제

---

## 스킬 추가
다음 파일을 만듭니다.

```text
.claude/skills/[skill-name]/SKILL.md
```

각 스킬에는 읽기 범위를 명확하고 작게 적습니다.
