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

echo [1] Tools

git --version >nul 2>&1
if errorlevel 1 (
    echo   [!!] Git       - missing: https://git-scm.com/
    set /a ERR+=1
) else (
    echo   [OK] Git
)

node --version >nul 2>&1
if errorlevel 1 (
    echo   [!!] Node.js   - missing: https://nodejs.org/
    set /a ERR+=1
) else (
    echo   [OK] Node.js
)

where codex >nul 2>&1
if errorlevel 1 (
    echo   [--] Codex CLI - optional: npm install -g @openai/codex
    set /a WARN+=1
) else (
    echo   [OK] Codex CLI
    set CODEX_OK=1
)

echo.
echo [2] Files

call :checkfile ".claude\settings.json"
call :checkfile "CLAUDE.md"
call :checkfile "BLUEPRINT.md"
call :checkfile "TODO.md"
call :checkfile "CHANGELOG.md"
call :checkfile "docs\README.md"
call :checkfile "docs\USAGE_GUIDE.en.md"
call :checkfile "docs\SKILLS.en.md"
call :checkfile ".claude\skills\implementer\SKILL.md"
call :checkfile ".claude\skills\today\SKILL.md"

echo.
echo [3] Planning State

set CLAUDE_FILLED=0
set BLUEPRINT_FILLED=0

if exist "CLAUDE.md" (
    findstr /L /C:"[Project Name]" "CLAUDE.md" >nul 2>&1
    if errorlevel 1 (
        set CLAUDE_FILLED=1
        echo   [OK] CLAUDE.md    - customized
        set STATE=designing
    ) else (
        echo   [--] CLAUDE.md    - still has placeholders
    )
)

if exist "BLUEPRINT.md" (
    findstr /L /C:"module-a" "BLUEPRINT.md" >nul 2>&1
    if errorlevel 1 (
        set BLUEPRINT_FILLED=1
        echo   [OK] BLUEPRINT.md - customized
        if "!STATE!"=="designing" set STATE=ready
    ) else (
        echo   [--] BLUEPRINT.md - still has template modules
    )
)

if exist "TODO.md" (
    findstr /L /C:"Replace with" "TODO.md" >nul 2>&1
    if errorlevel 1 (
        echo   [OK] TODO.md      - customized
    ) else (
        echo   [--] TODO.md      - still has placeholders
        set /a WARN+=1
    )
)

echo.
echo ================================================
echo  Next Step
echo ================================================
echo.

if %ERR% gtr 0 (
    echo   [!!] Fix missing required items first.
    echo.
)

if "!STATE!"=="new" (
    echo   Start with Planner in Claude Desktop or Web.
    echo.
    echo   1. Create a Claude Project.
    echo   2. Paste planner\PLANNER_PROJECT.md into Project Instructions.
    echo   3. Connect filesystem MCP to this project root.
    echo   4. Ask Planner to fill CLAUDE.md, BLUEPRINT.md, README.md, and TODO.md.
)

if "!STATE!"=="designing" (
    echo   Planning is in progress. Finish BLUEPRINT.md and module CLAUDE.md files.
)

if "!STATE!"=="ready" (
    echo   Planning appears ready. Start implementation in Claude Code:
    echo.
    echo     /today
    echo     /implementer [task or module]
    echo.
    if %CODEX_OK%==0 (
        echo   [--] Codex CLI is not installed. Notion sync, if needed, must be manual.
    ) else (
        echo   Codex CLI is available for optional Notion sync.
    )
)

echo.
if %WARN% gtr 0 echo   Warnings: %WARN%
pause
exit /b 0

:checkfile
if exist "%~1" (
    echo   [OK] %~1
) else (
    echo   [!!] %~1   - missing
    set /a ERR+=1
)
exit /b 0
