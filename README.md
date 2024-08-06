# dotFiles

This is the dotfiles repository for my personal configuration files. It contains my configuration for my programming setup on my mobile.

## Table of Contents
- [Installation](#installation)
- [Tree Structure](#tree-structure)
- [Neovim](#neovim)
- [Zsh](#zsh)
- [Bash](#bash)
- [Termux](#termux)
- [Code-Server](#code-server)
- [Fzf-git](#fzf-git)
- [Shell](#shell)
- [Contributing](#contributing)

## Installation

```bash
git clone https://github.com/abrarishere/dotFiles
```
This will download the repository to your local machine.

## Tree Structure
<details>
<summary>Click to expand</summary>

```bash
.
├── .config
│   ├── bat
│   │   ├── config
│   │   └── themes
│   │       └── tokyonight_night.tmTheme
│   ├── lazygit
│   │   └── config.yml
│   └── nvim
│       ├── after
│       │   └── queries
│       │       └── ecma
│       │           └── textobjects.scm
│       ├── init.lua
│       ├── lazy-lock.json
│       └── lua
│           └── abrar
│               ├── core
│               │   ├── init.lua
│               │   ├── keymaps.lua
│               │   └── options.lua
│               ├── lazy.lua
│               └── plugins
│                   ├── code-runner.lua
│                   ├── colorschemes.lua
│                   ├── comment.lua
│                   ├── dap-python.lua
│                   ├── db.lua
│                   ├── dressing.lua
│                   ├── editor.lua
│                   ├── formatting.lua
│                   ├── git
│                   │   ├── git-conflict.lua
│                   │   └── git-signs.lua
│                   ├── indent-blankline.lua
│                   ├── init.lua
│                   ├── lazygit.lua
│                   ├── linting.lua
│                   ├── lsp
│                   │   ├── lspconfig.lua
│                   │   ├── lspsaga.lua
│                   │   └── mason.lua
│                   ├── nvim-cmp.lua
│                   ├── nvim-tree.lua
│                   ├── substitute.lua
│                   ├── telescope.lua
│                   ├── themery.lua
│                   ├── tiny-code-action.lua
│                   ├── treesitter.lua
│                   ├── web.lua
│                   └── which-key.lua
├── .gitignore
├── .termux
│   ├── background
│   │   ├── background.jpeg
│   │   ├── background_landscape.jpeg
│   │   └── background_portrait.jpeg
│   ├── colors.properties
│   ├── font.ttf
│   ├── shell -> /data/data/com.termux/files/usr/bin/zsh
│   └── termux.properties
├── .zshrc
├── .zshrc-zap
├── README.md
├── bash.bashrc
├── code-server
│   └── Abrar termux .code-profile
├── fzf-git.sh
│   └── fzf-git.sh
│       ├── .github
│       │   └── FUNDING.yml
│       ├── README.md
│       └── fzf-git.sh
├── sh
│   ├── 1.py
│   ├── 9originalAsciiKey.sh
│   ├── full.sh
│   ├── high.sh
│   ├── install-sdk.sh
│   └── low.sh
└── termux-bg-transparent
    └── .termux
        ├── background
        │   ├── background.jpeg
        │   ├── background_landscape.jpeg
        │   └── background_portrait.jpeg
        ├── font.ttf
        ├── shell -> /data/data/com.termux/files/usr/bin/zsh
        └── termux.properties

25 directories, 64 files
```

</details>

## Neovim
The neovim configuration files are stored in the [.config/nvim](.config/nvim) directory. It contains the configuration for the neovim editor that is more than just a text editor.

### Requirements:
> Neovim version must be greater than 10

- Node.js
- Python
- FZF
- Ripgrep (optional)
- Lazygit (optional)

### Installation:
```bash
cd dotFiles 
cp -r .config/nvim ~/.config/
```
### Major Plugins:
- Nvim-Tree
- Nvim-Treesitter
- Nvim-Telescope
- Nvim-Cmp
- Nvim-Dap
- Nvim-Lspconfig
- Nvim-Lspsaga
- Nvim-Which-Key
- Nvim-Comment
- Editor.lua

## Zsh
There are two zsh configuration files in the repository:

- [.zshrc](.zshrc)

      This is the main zsh configuration file and oh-my-zsh is used for adding plugins and themes.

- [.zshrc-zap](.zshrc-zap)
    
        This is the zsh configuration file for the ZAP plugin. It is a zsh plugin that provides a minimal zsh setup.

### Installation:
```bash
cp .zshrc ~/.zshrc
```

for ZAP plugin:
```bash
cp .zshrc-zap ~/.zshrc
```

## Bash
The bash configuration file is stored in the [bash.bashrc](bash.bashrc) directory. It contains the configuration for the bash shell.

### Installation:
```bash
cp bash.bashrc /etc/bash.bashrc
```

> Note: The bash configuration file is for the root user. You can change it according to your need.This is for the termux shell if ypu are using any other distro may be you have to rename it to `.bashrc`.

## Termux
The termux configuration files are stored in the [.termux](.termux) directory. It contains the configuration for the termux shell, background, and font.

### Installation:
```bash
cp -r .termux ~/
```

## Code-Server
The code-server configuration file is stored in the [code-server](code-server) directory. It contains the configuration for the code-server.They can be used in vscode or code-server/code-oss.

### Installation:
```bash
cp -r code-server ~/.config/
```

## Fzf-git
The fzf-git configuration file is stored in the [fzf-git.sh](fzf-git.sh) directory. It contains the configuration for the fzf-git. It is a shell script that provides a fuzzy finder for git commands.

> Note: The fzf-git script is not mine. It is a fork of the original fzf-git script. The original script can be found [here](https://github.com/junegunn/fzf-git.sh).

### Installation:
```bash
cp -r fzf-git.sh ~/
```

## Shell
These are the shell scripts that I you ca use to download some of the tools that I use in my setup.

### Installation:
```bash
cp -r sh ~/
cd sh
chmod +x full.sh
chmod +x high.sh
chmod +x low.sh
chmod +x install-sdk.sh
```

> Note: The shell scripts have all configurations for mine setup. It also set git with my name and email. You can change it according to your need.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
