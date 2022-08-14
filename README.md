# Windows Context Menu Tools

This repository is a bundle of best ***Windows shell File Explorer context menu tools*** organized in cascaded menus.

All tools are condensed in command-lines **using only Windows 10-11 built-in internal commands**. These commands are written into Windows Registry when you install these tools.

> Tested on Microsoft Windows 10/11 Pro 64-bits.

---

## Prompts here

Each ***prompt here tool***:

- can be run normally or *as Administrator* (please note *run as Administrator* doesn't apply from folder's shortcuts `.lnk`)

- applies from any folder on both File Explorer left and right panes.

- doesn't apply from Windows Libraries

- doesn't apply from drives like `C:\` or `D:\`

- on Windows 10 or 11, it opens in a *classic terminal window*

- on Windows 11 only, if optional [Microsoft Windows Terminal] is installed, it opens prompt inside

[Microsoft Windows Terminal]: https://www.microsoft.com/store/productId/9N0DX20HK701

### Command Prompt here

`CommandPrompt-here.reg`

Let you run built-in ***Command Prompt*** located in Path Environment `cmd.exe` from any folder.

### PowerShell 5 here

`PowerShell-5-here.reg`

Let you run built-in ***Windows PowerShell*** located in Path Environment `powershell.exe`, from any folder. By default it's always *Windows PowerShell x64* on Windows 64-bits.

### PowerShell 5 ISE here

`PowerShell-5-ISE-here.reg`

- Let you run built-in ***Windows PowerShell ISE*** located in Path Environment `powershell_ise.exe`, from any folder. By default it's always *Windows PowerShell ISE x64* or Windows 64-bits.

- Limitation: can't apply on a folder if his path contains `[` or `]` characters.

### ![logo][] PowerShell 7 here

`PowerShell-7-here.reg`

- Let you run latest ***PowerShell 7*** located in Path Environment `pwsh.exe`, from any folder.

- **Requires** install of [PowerShell 7 x64 MSI] into `C:\Program Files\PowerShell\`.

- **Doesn't** work with *PowerShell 7 from Microsoft Store* which is a limited version.

[PowerShell 7 x64 MSI]: https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows

[logo]: https://raw.githubusercontent.com/PowerShell/PowerShell/master/assets/ps_black_64.svg

- Replaces *PowerShell 7 default context menu* to get a clean cascaded menu and Admin run.

### Git Bash (and Git GUI) here

`Git-here.reg`

- Let you run ***Git Bash*** and ***Git GUI*** from any folder.

- **Requires** install of [Git] into `C:\Program Files\Git\`.

[Git]: <https://git-scm.com/download/win>

- Replaces *Git default context menu* to get a clean cascaded menu and Admin run.

### Windows Terminal here

`Windows-Terminal-here.reg`

- Let you run latest ***Microsoft Windows Terminal*** located in Path Environment `wt.exe`, from any folder.

- **Requires** install of [Microsoft Windows Terminal] directly from Microsoft Store.

- Replaces *Windows Terminal default context menu* to get a clean cascaded menu and Admin run.

---

## Files and folders listing from folder

Features:

- Works on folders, shortcuts, network locations

- Show all folders and files, hidden also

- Supports all Windows glyphs.

### List in Clipboard

```List-in-Clipboard.reg```

Lists folders/files of any folder, and copy it to the Clipboard.

### List in Notepad

```List-in-Notepad.reg```

Lists folders/files of any folder and displays it in a temporary Notepad file that disappear as soon as it is closed.

---

## Hash

```GetHash.reg```

- Display in a terminal window on the following hashes `SHA-1` `SHA-256` `SHA-384` `SHA-512` `MACTripleDES` `MD5` `RIPEMD-160` for any file(s) selected in File Explorer.

- Applies on all selected files, in the File Explorer right pane, with right click on selection > Hash.

---

## How to install and uninstall

### Install

```ALL-Install.cmd```

- Run `ALL-Install.cmd` to install all features.
- You can delete the .reg files corresponding to the features you don't want, so `ALL-Install.cmd` will ignore it.
- Just run a `.reg` if you want to install a specific one.
- You can run install as many times as you want, it always delete previous installation.

### Uninstall

```ALL-Uninstall.reg```

- Just run `ALL-Uninstall.reg`
- To remove the default 'Open in Terminal' setup by Windows Terminal, run `Windows-Terminal-[remove-default-menu-need-restart].reg`
- To restore it, run `Windows-Terminal-[restore-default-menu-need-restart].reg`
