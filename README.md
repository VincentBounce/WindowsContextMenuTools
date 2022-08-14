# Windows Context Menu Tools

This repository is a bundle of best Windows shell File Explorer context menu tools organized in cascaded menus.

All tools are condensed in CLI using only Windows 10-11 built-in features. These commands are installed into Windows Registry.

Designed for Microsoft Windows 10 and 11 File Explorer.

## Prompts here

Each [prompt here]:

- can be run normally or as Administrator

- it applies on all folders on both File Explorer left and right panes.

- doesn't apply Windows Libraries

- doesn't apply directly on drives like C:\ or D:\

- on Windows 10 or 11, it opens on a terminal window

- on Windows 11 only, if optional [Microsoft Windows Terminal] is installed, it opens prompt inside

[Microsoft Windows Terminal]: https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701

### Command Prompt here

Let you run CMD.exe from any folder

### PowerShell 5 here

Let you run built-in Windows PowerShell located in Path Environment powershell.exe. By default it's always PowerShell x64 or Windows 64-bits.

### PowerShell 5 ISE here

Let you run built-in Windows PowerShell ISE located in Path Environment powershell_ise.exe. By default it's always PowerShell x64 or Windows 64-bits.

Limitation: can't apply on a folder if his path contains [ or ] characters.

### PowerShell 7 here

Requires install of [PowerShell 7 x64 MSI] into 'C:\Program Files\PowerShell\\'.

**Doesn't** work with [PowerShell 7 from Microsoft Store] which is a limited version.

[PowerShell 7 x64 MSI]: https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows

Let you run built-in latest PowerShell 7 located in Path Environment pwsh.exe, from any folder.

Replaces PowerShell 7 context menu to sort it properly after Command Prompt and before List files.

### Git here

Requires install of [Git] into 'C:\Program Files\Git\\'.

[Git]: <https://git-scm.com/download/win>
Let you run Git Bash and Git GUI from any folder.

Replaces Git context menu to have a clean cascade menu.

## Files and folder listing from folder

Works on folders, shortcuts, network

Show all folders and files, hidden also

Supports all Windows glyphs on

### List in Clipboard

List

### List in Notepad

## Hash

Applies on all selected files in the File Explorer right pane.
