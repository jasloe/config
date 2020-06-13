### Install VSCode command line
- Open the Command Palette (Ctrl+Shift+P) and type 'shell command' to find the Shell Command: Install 'code' command in PATH command.
- Restart Terminal
- Type 'code' to open VSCode

### List VSCode Extensions
```
code --list-extensions | xargs -L 1 echo code --install-extension
```

```
code --install-extension aaron-bond.better-comments\
code --install-extension CoenraadS.bracket-pair-colorizer\
code --install-extension EditorConfig.EditorConfig\
code --install-extension formulahendry.auto-close-tag\
code --install-extension formulahendry.auto-rename-tag\
code --install-extension mechatroner.rainbow-csv\
code --install-extension mrmlnc.vscode-apache\
code --install-extension ms-vscode.sublime-keybindings\
code --install-extension msjsdiag.debugger-for-chrome\
code --install-extension sleistner.vscode-fileutils\
code --install-extension streetsidesoftware.code-spell-checker\
code --install-extension techer.open-in-browser\
code --install-extension vscode-icons-team.vscode-icons\
code --install-extension wix.vscode-import-cost
```
