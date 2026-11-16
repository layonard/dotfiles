# Dotfiles

Shared coding-agent instructions in [`agents-md/AGENTS.md`](agents-md/AGENTS.md).
Shared writing skill in [`skills/leo-writing-style`](skills/leo-writing-style).

## Install

```powershell
.\install.ps1
```

Links to `agents-md/AGENTS.md` are created at:

- Claude Code: `~/.claude/CLAUDE.md`
- OpenCode: `~/.config/opencode/AGENTS.md`
- Codex: `~/.codex/AGENTS.md`
- GitHub Copilot CLI: `~/.copilot/copilot-instructions.md`

Links to `skills/leo-writing-style` are created at:

- Claude Code: `~/.claude/skills/leo-writing-style`
- OpenCode: `~/.config/opencode/skills/leo-writing-style`
- Codex: `~/.agents/skills/leo-writing-style`
- GitHub Copilot CLI: `~/.copilot/skills/leo-writing-style`

Only the individual skill folder is linked, so other installed skills are unaffected.

- Missing directories are created; existing files and folders are left alone.
- On Windows, enable Developer Mode or run PowerShell as administrator.
- Keep this repository in place so the links continue to work.
