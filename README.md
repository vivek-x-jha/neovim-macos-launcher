# Neovim MacOS Launcher

Provides Apple Automator scripts for launching any text files in NeoVim on MacOS. By default, NeoVim is not a native application so opening files in it outside a terminal is troublesome. Inspired by this [Stack Overflow thread](https://stackoverflow.com/a/66992249/8018072).

Currently supports:

- [x] iTerm
- [x] Alacritty
- [x] Terminal
- [x] Kitty

## Steps

1. Launch Automator (Finder -> Applications -> Automator)
1. New Document -> Choose a type for your document: Application
1. In Actions search for Run AppleScript and drag that to where it says something like "Drag actions here..."
1. Delete the default example of AppleScript
1. Copy and Paste the code in the blog (where it says NeoVim.app) to where it previous had the default code
1. Save the new Automator app (save as aplicattion format). Save it in the Applications folder
1. Right-Click a file type you wish to open every time you click on them (e.g. .php file). Select Get Info or do cmd + i, it will open informations about that file. Scroll to wher it says Open With and select Other. Then just go to Aplicattions folder and select your new NeoVim "app".
1. Do the same to other file types if you wish.
1. You can now double click on your PHP files (or others if you did the same) and open them in NeoVim. Enjoy!

## Tasks

- [ ] Debug iterm not launching when no windows are open
- [ ] Refactor terminal script to open in new window like iterm
- [ ] Create script for Kitty
