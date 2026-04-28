# 사용 가이드

> 사람용 번역본입니다. 기준본은 `docs/USAGE_GUIDE.en.md`입니다.

이 템플릿은 설계, 구현, 상태 추적을 분리해서 AI 컨텍스트를 줄이기 위한 템플릿입니다.

## 새 프로젝트 시작
1. 이 템플릿으로 새 저장소를 만듭니다.
2. 제공된 Claude/Codex 설정을 사용할 경우 `setup.bat`를 실행합니다.
3. Planner에게 다음 파일 작성을 요청합니다.
   - `CLAUDE.md`
   - `BLUEPRINT.md`
   - `src/[module]/CLAUDE.md`
   - `README.md`
4. 생성된 계획 파일을 커밋합니다.
5. `/today`로 오늘 할 일을 고릅니다.
6. `/implementer [작업 또는 모듈]`로 구현을 시작합니다.

## 일일 흐름
```text
/today
  -> TODO.md와 CHANGELOG.md만 읽음
  -> 바로 시작 가능한 작은 작업 추천

/implementer [작업]
  -> CLAUDE.md, BLUEPRINT.md, TODO.md, 관련 모듈 문서만 읽음
  -> 범위 검증
  -> 요청된 대상만 구현
```

## 문서 규칙
- 구조 설명은 `docs/ARCHITECTURE.ko.md`를 봅니다.
- 설치 절차는 `docs/SETUP_GUIDE.ko.md`를 봅니다.
- 명령어 설명은 `docs/SKILLS.ko.md`를 봅니다.
- 이 문서에는 해당 설명을 길게 반복하지 않습니다.

## 세션 종료
구현 세션을 끝내기 전에:
1. 완료된 현재 작업을 `TODO.md`에서 `CHANGELOG.md`로 옮깁니다.
2. 새로 발견한 작업은 `TODO.md`의 `Next` 또는 `Blocked`에 추가합니다.
3. 안정적인 상태라면 커밋합니다.
