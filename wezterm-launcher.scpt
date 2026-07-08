on run {input, parameters}
	set nvimBin to "/Users/mubuntu/.local/share/bob/nvim-bin/nvim"
	set weztermBin to "/opt/homebrew/bin/wezterm"
	set nvimCmd to quoted form of nvimBin

	if input is not {} then
		repeat with inputItem in input
			set filePath to POSIX path of inputItem
			set nvimCmd to nvimCmd & " " & (quoted form of filePath)
		end repeat
	end if

	-- Run through zsh so ~/.zshenv is sourced for GUI launches.  After Neovim
	-- exits, replace the launcher process with an interactive login shell so the
	-- WezTerm window does not disappear just because :qa was used.
	set shellCmd to nvimCmd & "; status=$?; printf '\\n[Neovim exited with status %s]\\n' \"$status\"; exec /bin/zsh -l"

	-- Return control to Automator immediately so repeated Finder open events are
	-- not queued behind the lifetime of this WezTerm window.  Use the wezterm CLI
	-- rather than wezterm-gui; `wezterm start` is the supported entry point and
	-- will create a GUI instance when one is not already running.
	do shell script (quoted form of weztermBin & " start -- /bin/zsh -lc " & quoted form of shellCmd & " >/dev/null 2>&1 &")
end run
