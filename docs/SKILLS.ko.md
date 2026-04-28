# 스킬

> 사람용 번역본입니다. 기준본은 `docs/SKILLS.en.md`입니다.

명령어 설명은 이 문서에만 자세히 둡니다. 다른 문서에서는 이 문서로 링크합니다.

## `/today`
읽는 파일:
- `TODO.md`
- `CHANGELOG.md`
- 의존성이 불명확할 때만 `BLUEPRINT.md`

하지 않는 일:
- 구현
- 전체 문서 읽기
- `_internal/` 읽기
- 요청 없는 한국어 문서 읽기

세션 시작 시 바로 할 작은 작업을 고를 때 사용합니다.

## `/implementer`
읽는 파일:
- `CLAUDE.md`
- `BLUEPRINT.md`
- `TODO.md`
- 관련 `src/[module]/CLAUDE.md`
- 최근 완료 작업이 필요할 때만 `CHANGELOG.md`

하지 않는 일:
- 관련 없는 모듈 읽기
- 관련 없는 모듈 수정
- `_internal/` 읽기
- 같은 주제의 영어/한국어 문서 동시 읽기

이름이 정해진 작업, 기능, 모듈을 구현할 때 사용합니다.

## 스킬 추가
다음 파일을 만듭니다.

```text
.claude/skills/[skill-name]/SKILL.md
```

각 스킬에는 읽기 범위를 명확하고 작게 적습니다.
