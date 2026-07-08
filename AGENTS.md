# AGENTS.md

## Scope

macOS Automator/AppleScript launchers for opening files in Neovim from Finder through terminal emulators.

## Entry Points

- WezTerm launcher: `wezterm-launcher.scpt`
- iTerm launcher: `iterm-launcher.scpt`
- Alacritty launcher: `alcritty-launcher.scpt`
- Terminal.app launcher: `terminal-launcher.scpt`
- User setup docs: `README.md`

## Commands

No automated test suite yet. For script changes, validate manually by installing/updating the Automator app and opening files from Finder.

Useful checks:

```sh
git diff --check
osascript -e 'return "AppleScript parser smoke test"'
```

## Rules

- Keep machine-specific executable paths documented in README when they change.
- Launch Neovim through `/bin/zsh -lc` where possible so GUI launches inherit shell setup.
- Preserve the behavior where the terminal window remains open in an interactive shell after Neovim exits unless the user asks otherwise.
- Update README for user-visible launcher/setup behavior changes.

## Memory

- Use `docs/known-issues.md` for launcher-specific bugs and workarounds.
- Use `docs/agent-memory.md` for durable setup facts that should survive across sessions.
