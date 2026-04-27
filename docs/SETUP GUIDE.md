# Setup Guide
> 새 환경에서 최초 1회만 실행합니다.

---

## 필수 설치 목록

### 1. Python
https://www.python.org/downloads/

> 설치 시 **"Add Python to PATH"** 반드시 체크

```bash
python --version  # 확인
```

### 2. Git
https://git-scm.com/

```bash
git --version  # 확인
```

### 3. GitHub Desktop
https://desktop.github.com/

### 4. Claude Desktop
https://claude.ai/download

### 5. Claude Code
https://claude.ai/code

```bash
claude --version  # 확인
```

### 6. Codex
https://chatgpt.com/codex

---

## Git 사용자 정보 설정 (최초 1회)

```bash
git config --global user.name "Your Name"
git config --global user.email "your@email.com"
```

---

## pipeline-template repo 클론

GitHub Desktop에서:
```
File → Clone Repository
URL: https://github.com/[yourname]/pipeline-template
Local Path: 원하는 경로
```

---

## setup.bat 실행

클론한 폴더에서 `setup.bat` 더블클릭.

- 환경 확인 자동 실행
- Agent Teams 환경변수 영구 설정

---

## 완료

이후 새 프로젝트는 `NEW_PROJECT_GUIDE.md` 참고.