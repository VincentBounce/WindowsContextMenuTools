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

- on Windows 11 only, if optional [Windows Terminal] is installed, it opens prompt inside

### Command Prompt here

`CommandPrompt-here.reg`

Let you run built-in ***Command Prompt*** located in Path Environment `cmd.exe` from any folder.

💿 To install this tool separately, just run `CommandPrompt-here.reg`

### ![powershell5-icon] PowerShell 5 here

`PowerShell5-here.reg`

Let you run built-in ***Windows PowerShell*** located in Path Environment `powershell.exe`, from any folder. By default it's always *Windows PowerShell x64* on Windows 64-bits.

💿 To install this tool separately, just run `PowerShell5-here.reg`

### ![powershell5-ise-icon] PowerShell 5 ISE here

`PowerShell5-ISE-here.reg`

- Let you run built-in ***Windows PowerShell ISE*** located in Path Environment `powershell_ise.exe`, from any folder. By default it's always *Windows PowerShell ISE x64* or Windows 64-bits.

- Limitation: doen't work from a folder which contains in his path `[` or `]` character.

💿 To install this tool separately, just run `PowerShell5-ISE-here.reg`

### ![powershell7-icon] PowerShell 7 here ⚠*requires third party application*

`PowerShell7-here.reg`

- Let you run latest ***PowerShell 7*** located in Path Environment `pwsh.exe`, from any folder.

- **Requires** install of [PowerShell 7 x64 MSI] into `C:\Program Files\PowerShell\`.

- **Doesn't** work with *PowerShell 7 from Microsoft Store* which is a limited version.

- Replaces *PowerShell 7 default context menu* to get a clean cascaded menu and *run as Admin feature*.

💿 To install this tool separately, just run `PowerShell7-here.reg`

[PowerShell 7 x64 MSI]: https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows

### ![gitbash-icon] Git Bash (and Git GUI) here ⚠*requires third party application*

`Git-here.reg`

- Let you run ***Git Bash*** and ***Git GUI*** from any folder.

- **Requires** [install of Git] into `C:\Program Files\Git\`.

[install of Git]: <https://git-scm.com/download/win>

- Replaces *Git default context menu* to get a clean cascaded menu and *run as Admin feature*.

💿 To install this tool separately, just run `Git-here.reg`

### ![windowsterminal-icon] Windows Terminal here ⚠*requires third party application*

`WindowsTerminal-here.reg`

- Let you run latest ***Windows Terminal*** located in Path Environment `wt.exe`, from any folder.

- **Requires** install of [Windows Terminal] directly from Microsoft Store.

- *Windows Terminal default context menu* can be disabled, to get both clean cascaded menu and *run as Admin feature* instead.

💿 To install this tool separately:

- Run `WindowsTerminal-here.reg`
- Copy `WindowsTerminal.ico` to `C:\Windows\System32\` (this is necessary because *Windows Terminal* icon path always change with auto-updates provided by *Microsoft Store*).
- To **remove** the default *Open in Terminal* context menu provided by [Windows Terminal] install, run `Windows-Terminal-[remove-default-menu-need-restart].reg`, then logoff/logon.
- To **restore** the default *Open in Terminal* context menu provided by [Windows Terminal] install, run `Windows-Terminal-[restore-default-menu-need-restart].reg`, then logoff/logon.

---

## ![files-listing-icon] Files and folders listing from folder

Features:

- Works on folders, shortcuts, network locations

- Show all folders and files, hidden also

- Supports all Windows glyphs.

### List in Clipboard

`List-in-Clipboard.reg`

Lists folders/files of any folder, and copy it to the Clipboard.

💿 To install this tool separately, just run `List-in-Clipboard.reg`

### List in Notepad

`List-in-Notepad.reg`

Lists folders/files of any folder and displays it in a temporary Notepad file that disappear as soon as it is closed.

💿 To install this tool separately, just run `List-in-Notepad.reg`

---

## Hash

`Get-FileHash.reg`

- Display in a terminal window on the following hashes `SHA-1` `SHA-256` `SHA-384` `SHA-512` `MACTripleDES` `MD5` `RIPEMD-160` for any file(s) selected in File Explorer.

- Applies on all selected files, in the File Explorer right pane, with right click on selection -> Get file Hash.

💿 To install this tool separately, just run `Get-fileHash.reg`

---

## How to install and uninstall all tools

### 💿 Install

`ALL-Install.cmd`

- **Run `ALL-Install.cmd` to install all tools automatically.**

- You can optionally delete the files corresponding to the tools you don't want, so `ALL-Install.cmd` will ignore it.

- Just run a `.reg` if you want to install a specific one.

- You can run install as many times as you want, it always delete previous installation.

- To **remove** the default *Open in Terminal* context menu provided by [Windows Terminal] install, run `Windows-Terminal-[remove-default-menu-need-restart].reg`, then logoff/logon.

### 🚫 Uninstall

`ALL-Uninstall.reg`

- **Run `ALL-Uninstall.reg` to remove all tools automatically.**

- To **restore** the default *Open in Terminal* context menu provided by [Windows Terminal] install, run `Windows-Terminal-[restore-default-menu-need-restart].reg`, then logoff/logon.

- Optionally, you can delete Windows Terminal icon located here `C:\Windows\System32\WindowsTerminal.ico`

[files-listing-icon]: /readme-images/files-48.png

[powershell5-icon]: /readme-images/PowerShell5-h32px.svg

[powershell5-ise-icon]: /readme-images/PowerShell5-ISE-h32px.png

[powershell7-icon]: /readme-images/PowerShell7-h32px.svg

[gitbash-icon]: /readme-images/GitBash-h32px.svg

[windowsterminal-icon]: /readme-images/WindowsTerminal-h32px.svg

[logo-test]: https://raw.githubusercontent.com/PowerShell/PowerShell/master/assets/ps_black_64.svg

[Windows Terminal]: https://www.microsoft.com/store/productId/9N0DX20HK701
