# 설치 가이드

> 사람용 번역본입니다. 기준본은 `docs/SETUP_GUIDE.en.md`입니다.

이 가이드는 워크플로우 환경을 초기화하는 방법을 다룹니다. 도구 설치는 머신당 한 번만 진행합니다. 프로젝트 설정은 새 워크플로우 환경마다 한 번 진행합니다.

## 필수 도구
- Git: https://git-scm.com/
- Node.js: https://nodejs.org/
- Python: https://www.python.org/downloads/
- Claude Desktop: https://claude.ai/download
- Claude Code
- Codex CLI

## Claude Code
VS Code 확장 또는 npm으로 설치합니다.

```bash
npm install -g @anthropic-ai/claude-code
```

## Codex CLI
```bash
npm install -g @openai/codex
```

## Claude Desktop Filesystem MCP
Claude Desktop 설정 파일을 엽니다.

```text
%APPDATA%\Claude\claude_desktop_config.json
```

워크플로우 환경 루트를 filesystem 서버로 추가합니다.

```json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-filesystem",
        "C:\\Users\\username\\path\\to\\project"
      ]
    }
  }
}
```

설정 변경 후 Claude Desktop을 재시작합니다.

## Codex Notion MCP
```bash
codex mcp add notion --url https://mcp.notion.com/mcp
codex mcp login notion
```

## Claude Desktop 프로젝트 지침 (Planner)

Claude Desktop을 열고 프로젝트를 선택하거나 새로 만든 뒤, `planner/PLANNER_PROJECT.md`의 전체 내용을 **Project Instructions** 필드에 붙여넣습니다.

붙여넣기 전에 해당 파일 안의 **Project Path** 자리표시자를 실제 워크플로우 환경 루트의 절대 경로로 바꿔주세요.

## Agent Teams
`setup.bat`를 실행하거나 다음 값을 설정합니다.

```bash
setx CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS 1
```

## 초기화 체크리스트
- [ ] Git 설치
- [ ] Node.js 설치
- [ ] Python 설치
- [ ] Claude Desktop 설치 및 이 워크플로우 환경 루트에 MCP 설정
- [ ] `planner/PLANNER_PROJECT.md` 내용을 Claude Desktop Project Instructions에 붙여넣기
- [ ] Claude Code 설치
- [ ] Codex CLI 설치
- [ ] 필요 시 Notion MCP 로그인
- [ ] 필요 시 Agent Teams 활성화
