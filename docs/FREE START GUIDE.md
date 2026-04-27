# Free Start Guide
> 템플릿 구조 없이 빠르게 시작하고 싶을 때 사용합니다.

---

## 언제 쓰나요?

- 아이디어 검증 / 프로토타입
- 작은 스크립트나 단발성 작업
- 모듈 구조가 필요 없는 단순 프로젝트
- 일단 빠르게 만들고 나중에 구조화할 때

---

## 최소 셋업

### 1. 빈 폴더 생성 + Git 초기화

GitHub Desktop:
```
File → New Repository
Name: [프로젝트명]
Local Path: [원하는 경로]
```

### 2. CLAUDE.md 최소 버전 작성

아래 내용만 채워도 충분합니다:

```markdown
# Project Context

## Overview
[한 줄 설명]

## Goals
- [목표]

## Tech Stack
- [기술]

## Current Status
- [지금 하려는 것]
```

### 3. Claude Code 실행

```bash
cd [프로젝트 폴더]
claude
```

---

## 자유 시작 → 템플릿 구조로 전환하는 법

프로젝트가 커지면 언제든 템플릿 구조로 전환 가능합니다.

```
1. templates/ 폴더 복사해오기
2. AGENTS.md 추가
3. src/ 폴더 정리
4. 모듈 CLAUDE.md 작성
5. NEW_PROJECT_GUIDE.md 참고해서 구조화
```

---

## 체크리스트

```
□ 빈 폴더 생성
□ Git 초기화 (GitHub Desktop)
□ CLAUDE.md 최소 버전 작성
□ Claude Code 실행
□ 작업 완료 후 GitHub Desktop 커밋
```

---

## 팁

- CLAUDE.md가 없어도 Claude Code는 실행되지만,
  있을수록 컨텍스트 파악이 빨라져서 품질이 높아집니다.
- 나중에 구조화할 계획이라면 처음부터 `src/` 폴더는 만들어두는 게 좋아요.