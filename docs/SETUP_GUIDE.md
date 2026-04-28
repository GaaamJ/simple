# Setup Guide
> 새 환경에서 최초 1회만 실행합니다.

---

## 1. 필수 설치

### Python
https://www.python.org/downloads/
> 설치 시 **"Add Python to PATH"** 반드시 체크

### Node.js
https://nodejs.org/
> 두 가지 이유로 필요:
> - Claude Desktop MCP 파일시스템 서버 실행 (`npx` 사용)
> - Codex CLI 설치 및 실행 (`npm` 사용)
>
> Node.js 없이도 파이프라인 동작은 가능하지만,
> Claude Desktop의 로컬 파일 자동 읽기/쓰기와 Codex Notion 연동이 수동 작업으로 대체됨.

### Git
https://git-scm.com/

### Git GUI (선택사항)
> CLI에 익숙하지 않다면 GUI 툴 사용 권장.
> GitHub Desktop / GitKraken / SourceTree 등 자유롭게 선택.

### Claude Desktop
https://claude.ai/download

### Claude Code (VSCode 익스텐션)
VSCode에서:
```
Extensions → "Claude Code" 검색 → Install
```
또는 터미널:
```bash
npm install -g @anthropic-ai/claude-code
```

### Codex CLI (권장)
```bash
npm install -g @openai/codex
```
> VSCode 익스텐션 Codex도 존재하나, Notion MCP 서버 감지 오류 이슈가 있어 CLI 권장.
> VSCode 익스텐션은 파일 직접 참조(@file)는 가능하지만 MCP 연동이 불안정함.

---

## 2. Git 사용자 정보 설정

```bash
git config --global user.name "Your Name"
git config --global user.email "your@email.com"
```

---

## 3. Claude Desktop MCP 파일시스템 설정

Claude Desktop이 로컬 파일(CLAUDE.md 등)을 직접 읽고 수정할 수 있게 설정.

### config 파일 열기

Windows:
```
%APPDATA%\Claude\claude_desktop_config.json
```
> 없으면 직접 생성. 또는 Claude Desktop → Settings → Developer → Edit Config

### config 내용 작성

```json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-filesystem",
        "C:\\Users\\[username]\\[프로젝트 루트 경로]"
      ]
    }
  }
}
```

> `[username]`과 경로를 실제 값으로 변경.
> **이 경로를 `planner/PLANNER_PROJECT.md`의 프로젝트 경로 항목과 동일하게 맞춰야 합니다.**
> 여러 경로 접근 필요 시 경로 추가 가능:
> ```json
> "args": ["-y", "@modelcontextprotocol/server-filesystem",
>   "C:\\Users\\username\\projects",
>   "C:\\Users\\username\\Documents"]
> ```

### Claude Desktop 완전 재시작

> 창 닫기가 아니라 시스템 트레이 → 우클릭 → Exit 후 재시작.

### 확인

재시작 후 채팅 입력창 우측 하단에 🔨 아이콘 표시되면 성공.

---

## 4. Claude Desktop Planner 프로젝트 설정

Planner 역할 전용 Claude Desktop 프로젝트를 생성합니다.

### 프로젝트 생성

```
Claude Desktop → Projects → New Project
```

### Project Instructions 입력

아래 내용을 붙여넣고 경로만 실제 값으로 교체합니다:

```
프로젝트 경로: C:\Users\[username]\[프로젝트 루트 경로]

세션 시작 시 위 경로의 planner/PLANNER_PROJECT.md를 읽고 역할을 수행하세요.
```

> `planner/PLANNER_PROJECT.md`를 수정해도 Instructions는 바꿀 필요 없습니다.
> MCP 파일시스템이 연결되어 있어야 파일을 읽을 수 있습니다.

---

## 5. Codex Notion 연동

Codex가 Notion 페이지를 읽고 쓸 수 있게 설정.

### 터미널에서 1회 실행

```bash
codex mcp add notion --url https://mcp.notion.com/mcp
```

또는 `~/.codex/config.toml` 파일에 직접 추가:

```toml
[mcp_servers.notion]
url = "https://mcp.notion.com/mcp"
```

### Notion OAuth 인증

```bash
codex mcp login notion
```

브라우저가 열리면 Notion 계정으로 로그인 → 워크스페이스 접근 허용.

### 확인

```bash
codex
# "CLAUDE.md 읽고 Notion 페이지 만들어줘" 테스트
```

---

## 6. Claude Code Agent Teams 활성화

`setup.bat` 실행 또는 수동으로:

```bash
setx CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS 1
```

또는 프로젝트 `.claude/settings.json` (이미 템플릿에 포함됨):

```json
{
  "env": {
    "CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS": "1"
  }
}
```

---

## 7. pipeline-template 설정

GitHub에서 pipeline-template repo:
```
Settings → General → "Template repository" 체크
```

이후 새 프로젝트는 `NEW_PROJECT_GUIDE.md` 참고.

---

## 완료 체크리스트

```
□ Python 설치
□ Node.js 설치
□ Git 설치
□ Git GUI 설치 (선택사항)
□ Claude Desktop 설치 + MCP 파일시스템 설정
□ Claude Desktop Planner 프로젝트 생성 + Instructions 입력
□ Claude Code 설치
□ Codex CLI 설치 + Notion 연동
□ Agent Teams 활성화
□ pipeline-template Template repository 설정
```