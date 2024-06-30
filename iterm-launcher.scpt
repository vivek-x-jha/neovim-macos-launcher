on run {input, parameters}
    set cmd to "nvim"
    if input is not {} then
        set filePath to POSIX path of input
        set cmd to "nvim \"" & filePath & "\""
    end if
    
    tell application "iTerm"
        tell the current window
            create tab with default profile
            tell the current session to write text cmd
        end tell
    end tell
end run
