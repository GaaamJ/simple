@echo off
chcp 65001 >nul
echo ================================
echo  Pipeline Setup
echo ================================
echo.

:: Git 설치 확인
git --version >nul 2>&1
if errorlevel 1 (
    echo [오류] Git이 설치되어 있지 않습니다.
    echo https://git-scm.com/ 에서 설치 후 다시 실행하세요.
    pause
    exit /b 1
)
echo [완료] Git 확인

:: Node.js 설치 확인
node --version >nul 2>&1
if errorlevel 1 (
    echo [오류] Node.js가 설치되어 있지 않습니다.
    echo https://nodejs.org/ 에서 설치 후 다시 실행하세요.
    pause
    exit /b 1
)
echo [완료] Node.js 확인

:: Codex CLI 설치 확인
codex --version >nul 2>&1
if errorlevel 1 (
    echo [경고] Codex CLI가 설치되어 있지 않습니다.
    echo 설치: npm install -g @openai/codex
    echo Notion 연동이 필요 없다면 무시해도 됩니다.
    echo.
) else (
    echo [완료] Codex CLI 확인
)

echo.
echo ================================
echo  Agent Teams 설정
echo ================================
echo  .claude/settings.json 에 이미 설정되어 있습니다.
echo  별도 환경변수 설정 불필요.
echo ================================
echo.
echo [완료] 파이프라인 환경 확인 완료
echo.
echo 다음 단계:
echo  1. CLAUDE.md 내용 채우기 (Claude Desktop)
echo  2. GitHub Desktop 으로 커밋
echo  3. Codex 로 Notion 동기화
echo  4. Claude Code 에서 구현 시작
echo.
pause
