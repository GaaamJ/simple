# 설치 가이드

> 사람용 번역본입니다. 기준본은 `docs/SETUP_GUIDE.en.md`입니다.

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

프로젝트 루트를 filesystem 서버로 추가합니다.

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

## Agent Teams
`setup.bat`를 실행하거나 다음 값을 설정합니다.

```bash
setx CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS 1
```

## 설치 체크리스트
- [ ] Git 설치
- [ ] Node.js 설치
- [ ] Python 설치
- [ ] Claude Desktop 설치 및 MCP 설정
- [ ] Claude Code 설치
- [ ] Codex CLI 설치
- [ ] 필요 시 Notion MCP 로그인
- [ ] 필요 시 Agent Teams 활성화
