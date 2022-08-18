# Windows Context Menu Tools

![Screenshots](/readme-images/WindowsContextMenuTools-screenshots.jpg "Screenshots of Windows Context Menu Tools")

This repository is a bundle of best ***Windows shell File Explorer context menu tools*** sorted and organized in cascaded menus.

- All tools are condensed in command-lines **using only Windows 10-11 built-in internal commands**.
- These commands are written into Windows Registry when you install these tools.
- No `.exe` nor `.msi` nor `.inf` to install it.
- We recommend optional upgrades like [PowerShell 7 x64 MSI] or [Windows Terminal], because these open-source projects are pushed by *Microsoft*, and will be probably built-in next releases of Windows.
- On **Windows 11**, an extra step is necessary to use these tools: from File Explorer, right click on selected item ➜ *Show more options*. Or select item ➜ `Shift` + `F10`

> Tested on Microsoft Windows 10/11 Pro 64-bits.

---

## Files and folders listing from folder

Global features:

- Lists folders and files from any directory **folder** or **shortcut `.lnk`** or **network location**, on both *File Explorer* left and right panes.

- Reads all folders and files including hidden ones.

- Supports all Windows glyphs in all Windows languages/region versions.

- To use it, right click one the folder you want to list the content, then select *List in Clipboard* or *List in Notepad*, then select:
  - *List content*: to list folders and files
  - *List content with subfolders*: to list full path of each element and subfolders
  - *List content with subfolders as Admin*: if it's protected folder
  - *List only files*
  - *List on folders*

## ![clipboard-icon] List in Clipboard

`List-in-Clipboard.reg`

Lists folders/files contained in any folder, and copy the list to the Clipboard.

💿 To install this tool separately, just run `List-in-Clipboard.reg`

## ![notepad-icon] List in Notepad

`List-in-Notepad.reg`

Lists folders/files contained in any folder and displays the list in a temporary Notepad file that disappear as soon as you close it.

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

## ![get-filehash-icon] Hash

`Get-FileHash.reg`

- Display in a terminal window one the following hashes `SHA-1` `SHA-256` `SHA-384` `SHA-512` `MD5` for any file(s) selected in File Explorer.

- Applies on all selected files, in the File Explorer right pane.

- To use it, right click on selection ➜ *Get file Hash*.

💿 To install this tool separately, just run `Get-fileHash.reg`

---

## ![wipe-free-space-icon] Overwrite deleted data

`Wipe-free-space.reg`

- Secures all your external drives before giving them, by ensuring that all **deleted data** has been **overwrited**. To do this, this tool calls the Windows built-in program `cipher.exe` which writes successively 3 big files to fill entire empty space, in a temporary folder like `D:\EFSTMPWP\filE6A3.tmp`

- Avoids traditionnal formatting, which is unsecure, and which erase unnecessarily the data you want to keep.

- Proceeds 3 writting sequences: a first one only with `0`, a second one only with `1`, and a third one with random digits.

- Applies on all external drives, displayed in both *File Explorer* left and right panes.

- To use it, right click on your external drive ➜ *Overwrite deleted data*.

💿 To install this tool separately, just run `Wipe-free-space.reg`

---

## ![lock-bitLocker-drive-icon] Lock BitLocker Drive

`Lock-BitLocker-Drive.reg`

- Let you lock your external BitLocker drive whenether you want, directly from *File Explorer*. This tool calls the Windows built-in program `manage-bde.exe`

- Applies on all external drives, displayed in both *File Explorer* left and right panes. If your drive is not locked or not BitLocker encrypted, then tool does nothing.

- To use it, right click on your BitLocker locked external drive ➜ *Lock BitLocker Drive*.

💿 To install this tool separately, just run `Lock-BitLocker-Drive.reg`

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

[clipboard-icon]: /readme-images/List-in-Clipboard-h32px.png

[notepad-icon]: /readme-images/List-in-Notepad-h32px.png

[commandprompt-icon]: /readme-images/CommandPrompt-h32px.png

[powershell5-icon]: /readme-images/PowerShell5-h32px.svg

[powershell5-ise-icon]: /readme-images/PowerShell5-ISE-h32px.png

[powershell7-icon]: /readme-images/PowerShell7-h32px.svg

[gitbash-icon]: /readme-images/GitBash-h32px.svg

[windowsterminal-icon]: /readme-images/WindowsTerminal-h32px.svg

[get-filehash-icon]: /readme-images/Get-fileHash-h32px.png

[wipe-free-space-icon]: /readme-images/Wipe-free-space-h32px.png

[lock-bitLocker-drive-icon]: /readme-images/Lock-BitLocker-Drive-h32px.png

[PowerShell 7 x64 MSI]: https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows

[Windows Terminal]: https://www.microsoft.com/store/productId/9N0DX20HK701
