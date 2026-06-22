# Neovim macOS Launcher

Provides Apple Automator scripts for opening text files in Neovim on macOS. Because Neovim is not a native macOS application, opening files in it directly from Finder requires a small launcher. Inspired by this [Stack Overflow thread](https://stackoverflow.com/a/66992249/8018072).

Currently supports:

- [x] WezTerm
- [x] iTerm
- [x] Alacritty
- [ ] Kitty
- [x] Terminal

## WezTerm setup

The WezTerm launcher uses these machine-specific executable paths:

- Neovim: `/Users/mubuntu/.local/share/bob/nvim-bin/nvim`
- tmux: `/opt/homebrew/bin/tmux`
- WezTerm: `/opt/homebrew/bin/wezterm-gui`

Update them in `wezterm-launcher.scpt` if your executables are elsewhere.

1. Launch Automator (Finder -> Applications -> Automator)
2. Create a new document and choose **Application**.
3. Add the **Run AppleScript** action.
4. Replace the example AppleScript with the contents of `wezterm-launcher.scpt`.
5. Save the application as `/Applications/Neovim.app`.
6. In Finder, select a file, choose **File > Get Info**, and select **Neovim.app** under **Open with**. Use **Change All** if desired.

Each Finder launch opens the requested file or files in a new window in the temporary tmux session named `nvim-launcher`. Repeated launches open immediately even while that session exists. A Neovim window is removed when Neovim exits; tmux removes the session after its last window exits.

## Other terminals

The repository also includes launcher scripts for iTerm, Alacritty, and Terminal. Their setup follows the same Automator application workflow, substituting the corresponding `.scpt` file.

## Tasks

- [ ] Debug iterm not launching when no windows are open
- [ ] Refactor terminal script to open in new window like iterm
- [ ] Create script for Kitty
