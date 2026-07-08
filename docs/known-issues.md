# Known Issues

Managed ledger for recurring Neovim launcher bugs and workarounds.

## Rules

- Update an existing entry before adding a duplicate.
- Include status, last verified date, reproduction/retest steps, workaround, and exit criteria.
- Do not store machine secrets or unrelated local logs.

## Active Issues

## KI-2026-07-02-iterm-no-window-launch

**Status:** Open task from README; not retested in this pass.
**Last verified:** 2026-07-02 from `README.md` task list.
**Area:** iTerm AppleScript launcher

**Observed:** README tracks a task to debug iTerm not launching when no windows are open.

**Likely cause:** Unknown; likely AppleScript/iTerm window-creation behavior.

**Workaround:** Use the WezTerm launcher as the known working path, or open iTerm manually before testing the iTerm launcher.

**Reproduce/retest:** Quit iTerm fully, open a file through the iTerm Automator launcher, and observe whether a new iTerm window starts Neovim.

**Exit criteria:** `iterm-launcher.scpt` opens files in Neovim from Finder even when iTerm has no open windows, and README's task can be removed or marked fixed.

**References:** `README.md`.
