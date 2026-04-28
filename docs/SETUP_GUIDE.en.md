# Setup Guide

> Canonical document. Korean translation: `docs/SETUP_GUIDE.ko.md`.

This guide covers initializing a workflow environment. Complete the tool installation steps once per machine. Complete the project configuration steps once per new workflow environment.

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

Add a filesystem server pointing to your workflow environment root:

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

## Claude Desktop Project Instructions (Planner)

Open Claude Desktop → select or create a Project → paste the full contents of `planner/PLANNER_PROJECT.md` into the **Project Instructions** field.

Also set the **Project Path** placeholder inside that file to your absolute workflow environment root before pasting.

## Agent Teams
Run `setup.bat` or set:

```bash
setx CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS 1
```

## Initialization Checklist
- [ ] Git installed
- [ ] Node.js installed
- [ ] Python installed
- [ ] Claude Desktop installed and MCP configured for this workflow environment
- [ ] `planner/PLANNER_PROJECT.md` pasted into Claude Desktop Project Instructions
- [ ] Claude Code installed
- [ ] Codex CLI installed
- [ ] Notion MCP login completed if needed
- [ ] Agent Teams enabled if needed
