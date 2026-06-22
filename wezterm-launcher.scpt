on run {input, parameters}
	set nvimBin to "/Users/mubuntu/.local/share/bob/nvim-bin/nvim"
	set tmuxBin to "/opt/homebrew/bin/tmux"
	set weztermBin to "/opt/homebrew/bin/wezterm-gui"
	set sessionName to "nvim-launcher"
	set nvimCmd to nvimBin

	if input is not {} then
		repeat with inputItem in input
			set filePath to POSIX path of inputItem
			set nvimCmd to nvimCmd & " " & (quoted form of filePath)
		end repeat
	end if

	-- Creating the named session fails when it already exists. In that case,
	-- create a new window so this launch's Neovim command is never discarded.
	set tmuxCmd to "window_id=$(" & quoted form of tmuxBin & " new-session -d -P -F '#{window_id}' -s " & quoted form of sessionName & " " & quoted form of nvimCmd & " 2>/dev/null) || window_id=$(" & quoted form of tmuxBin & " new-window -d -P -F '#{window_id}' -t " & quoted form of (sessionName & ":") & " " & quoted form of nvimCmd & "); exec " & quoted form of tmuxBin & " attach-session -t \"$window_id\""
	-- Return control to Automator immediately so subsequent Finder open events
	-- are not queued behind the lifetime of the first WezTerm window.
	do shell script (quoted form of weztermBin & " start -- /bin/zsh -lc " & quoted form of tmuxCmd & " >/dev/null 2>&1 &")
end run
