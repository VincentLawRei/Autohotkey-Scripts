#NoEnv
#SingleInstance Force
SetWorkingDir %A_ScriptDir%

Loop
    {
        ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, %A_WorkingDir%\agree3.png
        Sleep, 2000
    } until !ErrorLevel
    sleep, 1500
    Click, %foundX%, %foundY%
    ExitApp
