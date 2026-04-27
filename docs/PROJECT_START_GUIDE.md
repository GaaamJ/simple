# Project Start Guide
> Claude Code 작업 시작 전 매번 참고합니다.

---

## 작업 시작 루틴

```
1. CLAUDE.md 최신 상태 확인
2. 오늘 할 작업 범위 결정
3. 단일 세션 vs Agent Teams 판단
4. Claude Code 실행
```

---

## 단일 세션 vs Agent Teams 판단

### 단일 세션 사용 (토큰 절약)
아래 경우엔 Agent Teams 없이 단일 세션으로 진행:

- 작업 범위가 한 모듈 안에서 끝날 때
- 모듈 간 의존성이 없는 작업
- 간단한 버그 수정 / 리팩토링
- 파일 1~2개 수정

> VSCode에서 Claude Code 채팅창에 바로 요청하면 됩니다.

### Agent Teams 사용
아래 경우에만 Agent Teams 활성화:

- 여러 모듈을 동시에 작업할 때
- 모듈 간 인터페이스를 함께 설계할 때
- 독립적으로 병렬 처리 가능한 작업이 3개 이상일 때

> `.claude/settings.json`에 이미 설정되어 있어 별도 실행 명령 불필요.
> Claude Code 채팅에서 teammate 생성을 요청하면 자동으로 활성화됩니다.

---

## Agent Teams 효율적으로 쓰는 법

### 1. 작업 전 CLAUDE.md 반드시 최신화
teammate는 CLAUDE.md를 기반으로 작업하므로
오래된 정보가 있으면 잘못된 방향으로 구현할 수 있음.

### 2. 모듈 경계를 명확히
teammate 간 같은 파일을 건드리면 충돌 발생.
루트 CLAUDE.md의 Module Map에서 담당 범위를 명확히 구분.

### 3. Interface Contract 먼저 확정
모듈 간 주고받는 데이터 형식을 먼저 정의하고 작업 시작.
그래야 teammate들이 독립적으로 작업 가능.

### 4. 작은 단위로 태스크 분해
Team Lead 프롬프트 예시:
```
# 좋은 예 (구체적)
module-a는 유저 입력 처리 담당, module-b는 렌더링 담당.
각자 CLAUDE.md 읽고 독립적으로 구현 후 인터페이스만 맞춰줘.

# 나쁜 예 (모호함)
게임 만들어줘.
```

### 5. 의존성 있는 작업은 순서 지정
```
module-a 먼저 완료 후 → module-b 시작
```
동시에 시작하면 interface 불일치 발생 가능.

---

## 토큰 절약 팁

| 상황 | 방법 |
|------|------|
| 컨텍스트 창 길어짐 | `/clear` 후 CLAUDE.md 다시 읽히기 |
| 단순 반복 작업 | 단일 세션으로 처리 |
| 탐색/리서치 | subagent 대신 직접 질문 |
| 큰 파일 수정 | 변경 범위 미리 좁혀서 전달 |

---

## 작업 종료 루틴

```
1. Git 커밋 (CLI 또는 GUI)
2. CLAUDE.md Current Status 업데이트
3. 필요 시 Codex로 Notion 재동기화
```