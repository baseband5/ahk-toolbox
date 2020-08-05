#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


WinShortcut(Path, Title)
{
    IfWinExist, %Title%                            ;check if the win exists
    {
        IfWinActive, %Title%
			{
				WinMinimize  ; Maximizes the Notepad window found by IfWinActive above.
				return "Minimised"
			}
		IfWinNotActive, %Title%
			{
				WinActivate, %Title%
        return "Activated"
			}

    }
    if (!FileExist(Path))                          ;check if file exists
    {
        TrayTip, , File does not exist.
        return "File does not exist"
    }
    Run %Path%,, UseErrorLevel        ;open the folder/file
    if (ErrorLevel)
        return "Run failed"
    return "Opened"
}