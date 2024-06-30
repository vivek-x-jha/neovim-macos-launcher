on run {input, parameters}
  set cmd to "nvim"
  if input is not {} then
    set filePath to POSIX path of input
    set cmd to "nvim \"" & filePath & "\""
  end if
  tell application "Terminal"
    do script with command cmd
  end tell
end run
