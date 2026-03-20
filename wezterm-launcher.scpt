on run {input, parameters}
	set nvimBin to "/Users/mubuntu/.local/share/bob/nvim-bin/nvim"
	set tmuxBin to "/opt/homebrew/bin/tmux"
	set sessionName to "nvim-launcher"
	set nvimCmd to nvimBin

	if input is not {} then
		set filePath to POSIX path of (item 1 of input)
		set nvimCmd to nvimBin & " " & (quoted form of filePath)
	end if

	set tmuxCmd to tmuxBin & " new-session -A -s " & sessionName & " " & (quoted form of nvimCmd)
	do shell script ("/opt/homebrew/bin/wezterm-gui start -- " & tmuxCmd)
end run
