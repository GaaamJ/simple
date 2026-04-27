@echo off
echo ================================
echo  Pipeline Setup
echo ================================
echo.

:: Python 설치 확인
python --version >nul 2>&1
if errorlevel 1 (
    echo [오류] Python이 설치되어 있지 않습니다.
    echo https://www.python.org/downloads/ 에서 설치 후 다시 실행하세요.
    pause
    exit /b 1
)

:: Git 설치 확인
git --version >nul 2>&1
if errorlevel 1 (
    echo [오류] Git이 설치되어 있지 않습니다.
    echo https://git-scm.com/ 에서 설치 후 다시 실행하세요.
    pause
    exit /b 1
)

:: Claude Code 설치 확인
claude --version >nul 2>&1
if errorlevel 1 (
    echo [오류] Claude Code가 설치되어 있지 않습니다.
    echo https://claude.ai/code 에서 설치 후 다시 실행하세요.
    pause
    exit /b 1
)

:: Agent Teams 환경변수 설정 (현재 세션)
set CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS=1

:: 영구 설정 (시스템 환경변수)
setx CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS 1 >nul 2>&1

echo [완료] 환경 확인 완료
echo [완료] Agent Teams 활성화 완료
echo.
echo ================================
echo  다음 단계
echo ================================
echo  1. CLAUDE.md 내용 채우기 (Claude Desktop)
echo  2. GitHub Desktop으로 커밋
echo  3. Codex로 Notion 동기화
echo  4. claude 명령어로 Claude Code 실행
echo ================================
echo.
pause