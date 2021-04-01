# Setup
A list of tasks to do when setting up a new computer

## General

* [Keyboard Maestro](https://www.keyboardmaestro.com/main/)
    * Shared macros are in iCloud drive

* Slate Window Manager
    * [Config](https://github.com/plivesey/SlateConfig)

* System Preferences
    * Trackpad
        * Tracking speed - fastest
        * More gestures - disable notification center, expose and launchpad
    * Mouse
        * Tracking speed - 1 lower than fastest
        * Scrolling speed - 3 lower than fastest
    * Keyboard
        * $ defaults write -g ApplePressAndHoldEnabled -bool false
        * Keyboard -> max out key repeat and delay until repeat
        * Customize control strip and remove Siri

* Clipboard management
    * [Flycut](https://apps.apple.com/us/app/flycut-clipboard-manager/id442160987)

* [GIF Creator](https://apps.apple.com/us/app/crunchygif-ezpz-video-to-gif/id1485165995?mt=12)

* Send screenshots to the Downloads folder
    * Run in terminal: `defaults write com.apple.screencapture location ~/Downloads`

## Code

* Visual Studio
    * [Shell Support](https://code.visualstudio.com/docs/setup/mac#_launching-from-the-command-line)
    * Extensions
        * [StandardJS Linter](https://marketplace.visualstudio.com/items?itemName=chenxsan.vscode-standardjs)

* iTerm
    * Starter `.zshrc` is in this directory. Copy it to `~/.zshrc`.
    * [Fix option-left/right](https://coderwall.com/p/h6yfda/use-and-to-jump-forwards-backwards-words-in-iterm-2-on-os-x)
    * tmux - `brew install tmux` - Recover accidentally closed terminal sessions.
    * [fzf](https://github.com/junegunn/fzf#installation) - Better control + r and control + t to search for commands and files.
    * bat - `brew install bat` - `cat` with syntax highlighting.

* Git
    * Starter `.gitconfig` is in this directory. Copy it to `~/.gitconfig`. Make sure to fill in the email address.
    * [removeMerged](https://github.com/plivesey/removeMerged)
    * [churn](https://github.com/garybernhardt/dotfiles/blob/f0c0ff92209e5aed4fa3ef6faf056eb9944a8f12/bin/git-churn) - A good utility when starting on a new project to see what the key files are.
    * Set open diff as the mergetool: `$ git config --global merge.tool opendiff`
    * Add things to `~/.gitconfig` from the `.gitconfig` file in this repo
    
* Xcode
    * [Fix focused editor](https://www.jessesquires.com/blog/xcode-tip-improving-assistant-editor/)
    * Preferences -> Text Editing -> While editing -> Select all checkboxes
    * [DevCleaner](https://itunes.apple.com/us/app/devcleaner/id1388020431?mt=12) - Automatically reclaims GBs of disk space used by XCode caches.
    * `defaults write com.apple.dt.Xcode ShowBuildOperationDuration -bool YES`

## Chrome Extensions

* [Vimium](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb?hl=en)
* Ad blocker
