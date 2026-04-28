@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

echo ================================================
echo  Pipeline State Check
echo ================================================
echo.

set ERR=0
set WARN=0
set CODEX_OK=0
set STATE=new

:: ── 1. 도구 확인 ──────────────────────────────────────
echo [1] 도구

git --version >nul 2>&1
if errorlevel 1 (
    echo   [!!] Git       - 미설치   https://git-scm.com/
    set /a ERR+=1
) else (
    echo   [OK] Git
)

node --version >nul 2>&1
if errorlevel 1 (
    echo   [!!] Node.js   - 미설치   https://nodejs.org/
    set /a ERR+=1
) else (
    echo   [OK] Node.js
)

codex --version >nul 2>&1
if errorlevel 1 (
    echo   [--] Codex CLI - 미설치   npm install -g @openai/codex
    set /a WARN+=1
) else (
    echo   [OK] Codex CLI
    set CODEX_OK=1
)

:: ── 2. 파일 존재 확인 ─────────────────────────────────
echo.
echo [2] 파일

call :checkfile ".claude\settings.json"
call :checkfile "CLAUDE.md"
call :checkfile "BLUEPRINT.md"
call :checkfile "TODO.md"
call :checkfile "docs\USAGE_GUIDE.md"
call :checkfile ".claude\skills\implementer\SKILL.md"

:: ── 3. Placeholder 확인 ───────────────────────────────
echo.
echo [3] 설계 상태

set CLAUDE_FILLED=0
set BLUEPRINT_FILLED=0

if exist "CLAUDE.md" (
    findstr /L /C:"[Project Name]" "CLAUDE.md" >nul 2>&1
    if errorlevel 1 (
        set CLAUDE_FILLED=1
        echo   [OK] CLAUDE.md    - 내용 채워짐
        set STATE=designing
    ) else (
        echo   [--] CLAUDE.md    - placeholder 상태
    )
)

if exist "BLUEPRINT.md" (
    findstr /C:"이 파일은 템플릿입니다" "BLUEPRINT.md" >nul 2>&1
    if errorlevel 1 (
        set BLUEPRINT_FILLED=1
        echo   [OK] BLUEPRINT.md - 내용 채워짐
        if "!STATE!"=="designing" set STATE=ready
    ) else (
        echo   [--] BLUEPRINT.md - placeholder 상태
    )
)

if exist "README.md" (
    findstr /L /C:"[Project Name]" "README.md" >nul 2>&1
    if not errorlevel 1 (
        echo   [--] README.md    - placeholder 상태
        set /a WARN+=1
    ) else (
        echo   [OK] README.md    - 내용 채워짐
    )
)

if exist "TODO.md" (
    findstr /C:"작업 항목" "TODO.md" >nul 2>&1
    if not errorlevel 1 (
        echo   [--] TODO.md      - placeholder 상태
        set /a WARN+=1
    ) else (
        echo   [OK] TODO.md      - 내용 채워짐
    )
)

:: ── 4. 다음 행동 안내 ─────────────────────────────────
echo.
echo ================================================
echo  다음 단계
echo ================================================
echo.

if %ERR% gtr 0 (
    echo   [!!] 위 [!!] 항목을 먼저 설치하세요.
    echo.
)

if "!STATE!"=="new" (
    echo   설계 단계 — Claude Desktop / Web 에서 시작하세요.
    echo.
    echo   1. Claude Desktop ^> Projects ^> New Project
    echo      Instructions 에 planner\PLANNER_PROJECT.md 내용 붙여넣기
    echo      MCP 파일시스템을 프로젝트 경로로 연결
    echo.
    echo   2. Project 채팅에서 설계 요청:
    echo      "planner\Claude.root.template.md 읽고
    echo       아래 개요로 CLAUDE.md / BLUEPRINT.md / README.md 작성해줘:
    echo       [프로젝트 개요]"
    echo.
    echo   3. Git 커밋 후 이 스크립트를 다시 실행하면 상태가 갱신됩니다.
)

if "!STATE!"=="designing" (
    echo   설계 진행 중 — BLUEPRINT.md 작성을 완료하세요.
    echo.
    echo   Claude Desktop 에서:
    echo     실행 흐름 / 모듈 배정 / 모듈 간 인수인계 데이터 포함
    echo     각 모듈의 src\[모듈명]\CLAUDE.md 생성
)

if "!STATE!"=="ready" (
    echo   설계 완료 — Claude Code 에서 구현을 시작하세요.
    echo.
    echo     /today          오늘 할 작업 브리핑
    echo     /implementer    구현 진입 ^(문서 검증 → 방식 확정 → 실행^)
    echo.
    if %CODEX_OK%==0 (
        echo   [--] Codex CLI 미설치: Notion 동기화는 수동 처리 필요
        echo        설치: npm install -g @openai/codex
    ) else (
        echo   커밋 후 Codex 로 Notion 을 동기화하세요:  codex
    )
)

echo.
pause
exit /b 0

:: ── 파일 체크 함수 ────────────────────────────────────
:checkfile
if exist "%~1" (
    echo   [OK] %~1
) else (
    echo   [!!] %~1   - 없음
    set /a ERR+=1
)
exit /b 0
