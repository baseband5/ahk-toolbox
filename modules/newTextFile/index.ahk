#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

NewTextFile()
{
    WinGetText, full_path, A
    
    StringSplit, word_array, full_path, `n
    Loop, %word_array0%
    {
        IfInString, word_array%A_Index%, Adres
        {
            full_path := word_array%A_Index%
            break
        }
    } 
    full_path := RegExReplace(full_path, "^Adres: ", "")
    StringReplace, full_path, full_path, `r, , all

    IfInString full_path, \
    {
        NoFile = 0
        Loop
        {
            IfExist  %full_path%\NewTextFile%NoFile%.txt
                    NoFile++
                else
                    break
        }
        FileAppend, ,%full_path%\NewTextFile%NoFile%.txt
    }
    else
    {
        return
    }
}