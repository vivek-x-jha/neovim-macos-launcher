on run {input, parameters}
    set cmd to "/usr/local/bin/alacritty -e /usr/local/bin/bash -lc nvim"
    if input is not {} then
        set filePath to POSIX path of input
        set cmd to "/usr/local/bin/alacritty -e /usr/local/bin/bash -lc \"nvim '" & filePath & "'\""
    end if
    do shell script cmd
end run
