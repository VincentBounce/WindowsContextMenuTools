# Windows Context Menu Tools

![Screenshots](/readme-images/WindowsContextMenuTools-screenshots.jpg "Screenshots of Windows Context Menu Tools")

This repository is a bundle of best ***Windows shell File Explorer context menu tools*** sorted and organized in cascaded menus.

- All tools are condensed in command-lines **using only Windows 10-11 built-in internal commands**.
- These commands are written into Windows Registry when you install these tools.
- No `.exe` nor `.msi` nor `.inf` to install it.

> Tested on Microsoft Windows 10/11 Pro 64-bits.

---

## ![files-listing-icon] Files and folders listing from folder

Global features:

- Opens from any **folder** or **shortcut `.lnk`** or **network location**, on both *File Explorer* left and right panes.

- Reads all folders and files including hidden ones.

- Supports all Windows glyphs in all Windows languages/region versions.

## ![clipboard-icon] List in Clipboard

`List-in-Clipboard.reg`

Lists folders/files of any folder, and copy the list to the Clipboard.

💿 To install this tool separately, just run `List-in-Clipboard.reg`

## ![notepad-icon] List in Notepad

`List-in-Notepad.reg`

Lists folders/files of any folder and displays the list in a temporary Notepad file that disappear as soon as you close it.

💿 To install this tool separately, just run `List-in-Notepad.reg`

---

## All prompts here

Each ***prompt here tool***:

- Opens from any **folder** or **shortcut `.lnk`** or **network location**, on both *File Explorer* left and right panes.

- Can be run as user or *as Administrator* (please note *run as Administrator* doesn't apply from folder's shortcuts `.lnk`)

- Doesn't open from *Windows Libraries*

- Doesn't open from *drives* like `C:\` or `D:\`

- On Windows 10 or 11, it opens in a *classic terminal window*

- On Windows 11 only, if optional [Windows Terminal] is installed, it opens prompt inside

## ![commandprompt-icon] Command Prompt here

`CommandPrompt-here.reg`

Let you run built-in ***Command Prompt*** located in Path Environment `cmd.exe` from any folder.

💿 To install this tool separately, just run `CommandPrompt-here.reg`

## ![powershell5-icon] PowerShell 5 here

`PowerShell5-here.reg`

Let you run built-in ***Windows PowerShell*** located in Path Environment `powershell.exe`, from any folder. By default it's always *Windows PowerShell x64* on Windows 64-bits.

💿 To install this tool separately, just run `PowerShell5-here.reg`

## ![powershell5-ise-icon] PowerShell 5 ISE here

`PowerShell5-ISE-here.reg`

- Let you run built-in ***Windows PowerShell ISE*** located in Path Environment `powershell_ise.exe`, from any folder. By default it's always *Windows PowerShell ISE x64* or Windows 64-bits.

- Limitation: doen't work from a folder which contains in his path `[` or `]` character.

💿 To install this tool separately, just run `PowerShell5-ISE-here.reg`

## ![powershell7-icon] PowerShell 7 here

`PowerShell7-here.reg`

- Let you run latest ***PowerShell 7*** located in Path Environment `pwsh.exe`, from any folder.

- ⚠**Requires** install of [PowerShell 7 x64 MSI] into `C:\Program Files\PowerShell\`.

- ⚠**Doesn't work** with ***PowerShell 7 from Microsoft Store*** which is a limited version. Better use [PowerShell 7 x64 MSI] version.

- Replaces *PowerShell 7 default context menu* to get a clean cascaded menu and *run as Admin feature*.

💿 To install this tool separately, just run `PowerShell7-here.reg`

[PowerShell 7 x64 MSI]: https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows

## ![gitbash-icon] Git Bash (and Git GUI) here

`Git-here.reg`

- Let you run ***Git Bash*** and ***Git GUI*** from any folder.

- ⚠**Requires** [install of Git] into `C:\Program Files\Git\`.

[install of Git]: <https://git-scm.com/download/win>

- Replaces *Git default context menu* to get a clean cascaded menu and *run as Admin feature*.

💿 To install this tool separately, just run `Git-here.reg`

## ![windowsterminal-icon] Windows Terminal here

`WindowsTerminal-here.reg`

- Let you run latest ***Windows Terminal*** located in Path Environment `wt.exe`, from any folder.

- ⚠**Requires** install of [Windows Terminal] directly from Microsoft Store.

- *Windows Terminal default context menu* can be disabled, to get both clean cascaded menu and *run as Admin feature* instead.

💿 To install this tool separately:

- Run `WindowsTerminal-here.reg`
- Copy `WindowsTerminal.ico` to `C:\Windows\System32\` (this is necessary because *Windows Terminal* icon path always change with auto-updates provided by *Microsoft Store*).
- To **remove** the default *Open in Terminal* context menu provided by [Windows Terminal] install, run `WindowsTerminal-[remove-default-menu-need-restart].reg`, then logoff/logon.
- To **restore** the default *Open in Terminal* context menu provided by [Windows Terminal] install, run `WindowsTerminal-[restore-default-menu-need-restart].reg`, then logoff/logon.

---

## ![hash-icon] Hash

`Get-FileHash.reg`

- Display in a terminal window one the following hashes `SHA-1` `SHA-256` `SHA-384` `SHA-512` `MACTripleDES` `MD5` `RIPEMD-160` for any file(s) selected in File Explorer.

- Applies on all selected files, in the File Explorer right pane. To use it, right click on selection ➜ Get file Hash.

💿 To install this tool separately, just run `Get-fileHash.reg`

---

## How to install and uninstall all tools

### 💿 Install all tools

- Click *Code* green button above ➜ *Download ZIP*, then extract `WindowsContextMenuTools-main.zip`.

- **Run `ALL-Install.cmd` to install all tools automatically.**

- You can optionally delete the files corresponding to the tools you don't want, so `ALL-Install.cmd` will ignore those tools.

- Just run a `.reg` if you want to install a specific one.

- You can run install as many times as you want, it always delete previous installation.

- To **remove** the default *Open in Terminal* context menu provided by [Windows Terminal] install, run `WindowsTerminal-[remove-default-menu-need-restart].reg`, then logoff/logon.

### 🚫 Uninstall all tools

- **Run `ALL-Uninstall.reg` to remove all tools automatically.**

- To **restore** the default *Open in Terminal* context menu provided by [Windows Terminal] install, run `WindowsTerminal-[restore-default-menu-need-restart].reg`, then logoff/logon.

- Optionally, you can delete Windows Terminal icon located here `C:\Windows\System32\WindowsTerminal.ico`

[files-listing-icon]: /readme-images/files-h42px.png

[clipboard-icon]: /readme-images/Clipobard-h32px.png

[notepad-icon]: /readme-images/Notepad-h32px.png

[commandprompt-icon]: /readme-images/CommandPrompt-h32px.png

[powershell5-icon]: /readme-images/PowerShell5-h32px.svg

[powershell5-ise-icon]: /readme-images/PowerShell5-ISE-h32px.png

[powershell7-icon]: /readme-images/PowerShell7-h32px.svg

[gitbash-icon]: /readme-images/GitBash-h32px.svg

[windowsterminal-icon]: /readme-images/WindowsTerminal-h32px.svg

[hash-icon]: /readme-images/Hash-h32px.png

[Windows Terminal]: https://www.microsoft.com/store/productId/9N0DX20HK701
