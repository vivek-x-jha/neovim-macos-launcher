# Neovim MacOS Launcher

Provides Apple Automator scripts for launching any text files in NeoVim on MacOS. By default, NeoVim is not a native application so opening files in it outside a terminal is troublesome. Inspired by this [Stack Overflow thread](https://stackoverflow.com/a/66992249/8018072).

Currently supports:

- [ ] Wezterm 
- [x] iTerm
- [x] Alacritty
- [ ] Kitty
- [x] Terminal

## Steps

1. Launch Automator (Finder -> Applications -> Automator)
1. New Document -> Choose a type for your document: Application
1. In Actions search for Run AppleScript and drag that to where it says "Drag actions or files here to buid your workflow."
1. Delete the default example of AppleScript
1. Copy and Paste the code in the blog (where it says NeoVim.app) to where it previous had the default code
6. Save the new Automator app as /Applications/Neovim.app
1. Right-Click a file type you wish to open every time you click on them (e.g. .php file). Select Get Info or do `CMD + i`, it will open informations about that file. Scroll to wher it says Open With and select Other. Then just go to Aplications folder and select your new NeoVim "app".
1. Do the same to other file types if you wish.
1. You can now double click on your PHP files (or others if you did the same) and open them in NeoVim. Enjoy!

## Tasks

- [ ] Debug iterm not launching when no windows are open
- [ ] Refactor terminal script to open in new window like iterm
- [ ] Create script for Kitty
- [ ] Debug wezterm not opening
