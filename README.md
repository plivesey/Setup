# Setup
A list of tasks to do when setting up a new computer

## General

* [Keyboard Maestro](https://www.keyboardmaestro.com/main/)
    * Shared macros are in iCloud drive

* [AeroSpace](https://github.com/nikitabobko/AeroSpace) (tiling window manager)
    * Config at `~/.config/aerospace/aerospace.toml`

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

* [Wispr Flow](https://www.wispr.com/) — voice dictation

* [Claude](https://claude.ai/) desktop app

* [Granola](https://granola.ai/) — meeting notes

* [MarkEdit](https://github.com/nicklockwood/MarkEdit) — markdown editor

* [GIF Creator](https://apps.apple.com/us/app/crunchygif-ezpz-video-to-gif/id1485165995?mt=12)

* Send screenshots to the Downloads folder
    * Run in terminal: `defaults write com.apple.screencapture location ~/Downloads`

## Code

* Visual Studio Code
    * [Shell Support](https://code.visualstudio.com/docs/setup/mac#_launching-from-the-command-line)
    * Extensions
        * [Claude Code](https://marketplace.visualstudio.com/items?itemName=anthropic.claude-code)
        * [GitHub Pull Requests](https://marketplace.visualstudio.com/items?itemName=github.vscode-pull-request-github)
        * [SemanticDiff](https://marketplace.visualstudio.com/items?itemName=semanticdiff.semanticdiff) — semantic diff viewer

* [GitKraken](https://www.gitkraken.com/) — git GUI

* [OrbStack](https://orbstack.dev/) — Docker & Linux VM (replaces Docker Desktop)

* [Ghostty](https://ghostty.org/) terminal
    * Starter `.zshrc` is in this directory. Copy it to `~/.zshrc`.
    * `brew install --cask font-jetbrains-mono` for the terminal font
    * Config at `~/.config/ghostty/config`: JetBrains Mono 16pt, bar cursor, dark theme (#14161a), window padding, split keybindings (Cmd+D vertical, Cmd+Shift+D horizontal, Cmd+Option+Arrow navigate, Cmd+Shift+Enter zoom)

* Zsh plugins (via Homebrew)
    * `brew install zsh-autosuggestions` — fish-style ghost text from history, accept with right arrow
    * `brew install zsh-syntax-highlighting` — colors commands green (valid) / red (invalid) as you type
    * Add to `.zshrc` (autosuggestions and syntax-highlighting must be sourced near end):
        ```
        source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
        source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
        ```

* CLI tools
    * `brew install fzf` — fuzzy finder. Ctrl+R for fuzzy history search, Ctrl+T for fuzzy file finder. Add to `.zshrc`: `source <(fzf --zsh)`
    * `brew install zoxide` — smart cd that learns your frequent directories. Type `z api` instead of full paths. Add to `.zshrc`: `eval "$(zoxide init zsh)"`
    * `brew install bat` — `cat` with syntax highlighting
    * `brew install eza` — modern `ls` with color, icons, and git integration
    * `brew install starship` — fast cross-shell prompt showing git branch, dirty state, runtime versions. Add to `.zshrc` (must be last line): `eval "$(starship init zsh)"`

* Shell config (in `.zshrc`)
    * Aliases: `g`=git, `cat`=bat, `ls`/`ll`/`lt`=eza (with colors, icons, git status, tree view)
    * History: 50k lines, shared across sessions, no duplicates — makes Ctrl+R fuzzy search much more useful
        ```
        HISTFILE=~/.zsh_history
        HISTSIZE=50000
        SAVEHIST=50000
        setopt SHARE_HISTORY HIST_IGNORE_ALL_DUPS HIST_REDUCE_BLANKS
        ```

* Git
    * Starter `.gitconfig` is in this directory. Copy it to `~/.gitconfig`. Make sure to fill in the email address.
    * `brew install gh` — GitHub CLI
    * [removeMerged](https://github.com/plivesey/removeMerged)
    * [churn](https://github.com/garybernhardt/dotfiles/blob/f0c0ff92209e5aed4fa3ef6faf056eb9944a8f12/bin/git-churn) — a good utility when starting on a new project to see what the key files are
    * Set open diff as the mergetool: `$ git config --global merge.tool opendiff`
    * Add things to `~/.gitconfig` from the `.gitconfig` file in this repo

* Database
    * `brew install postgresql@17` and `brew install pgvector`
    * [pgAdmin 4](https://www.pgadmin.org/) — PostgreSQL GUI
