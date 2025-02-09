on run {input, parameters}
	set cmd to "nvim"
	if input is not {} then
		set filePath to POSIX path of input
		set cmd to "/opt/homebrew/bin/nvim \"" & filePath & "\""
	end if
	do shell script "/opt/homebrew/bin/wezterm-gui start -- " & cmd
end run
