SetTitleMatchMode, 2
#SingleInstance force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#u::Reload

#j::
IfWinExist, - IntelliJ IDEA
{
  WinActivate
  return
}

#h::
IfWinExist, HipChat
{
  WinActivate
  return
}

#c::
IfWinExist, ahk_class MozillaWindowClass
    WinActivate
return

#b::
IfWinExist, ahk_class mintty
    WinActivate
return

#i::
IfWinExist, - Outlook
    WinActivate
return

;#v::
;{
;DetectHiddenWindows, On
;ControlSend, ahk_parent, ^{p}, ahk_class WMPlayerApp
;DetectHiddenWindows, Off
;return
;}

#a::
{
  IfWinExist, - Atom
    WinActivate
  return
}

#s::
{
  IfWinExist, ahk_class SpotifyMainWindow
    WinActivate
  Else IfWinExist, - Winamp
    WinActivate
  return
}

#v::Send   {Media_Play_Pause}
