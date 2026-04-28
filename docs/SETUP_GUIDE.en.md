# Setup Guide

> Canonical document. Korean translation: `docs/SETUP_GUIDE.ko.md`.

## Required Tools
- Git: https://git-scm.com/
- Node.js: https://nodejs.org/
- Python: https://www.python.org/downloads/
- Claude Desktop: https://claude.ai/download
- Claude Code
- Codex CLI

## Claude Code
Install through the VS Code extension or npm:

```bash
npm install -g @anthropic-ai/claude-code
```

## Codex CLI
```bash
npm install -g @openai/codex
```

## Claude Desktop Filesystem MCP
Open the Claude Desktop config:

```text
%APPDATA%\Claude\claude_desktop_config.json
```

Add a filesystem server for your project root:

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

Restart Claude Desktop after editing the config.

## Codex Notion MCP
```bash
codex mcp add notion --url https://mcp.notion.com/mcp
codex mcp login notion
```

## Agent Teams
Run `setup.bat` or set:

```bash
setx CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS 1
```

## Setup Checklist
- [ ] Git installed
- [ ] Node.js installed
- [ ] Python installed
- [ ] Claude Desktop installed and MCP configured
- [ ] Claude Code installed
- [ ] Codex CLI installed
- [ ] Notion MCP login completed if needed
- [ ] Agent Teams enabled if needed
