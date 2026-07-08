# Agent Memory

Durable nvim-launcher facts for future agent sessions.

## Facts

- Last verified: 2026-07-02 from `README.md`.
- This repo contains AppleScript/Automator launchers that let Finder open files in Neovim through terminal emulators.
- The WezTerm launcher is the primary documented path and currently references machine-specific executable paths for Neovim and WezTerm.
- Launchers should run Neovim through `/bin/zsh -lc` where possible so GUI launches source shell environment setup.
- After Neovim exits, the terminal window should remain in an interactive login shell unless the user asks to change that behavior.
