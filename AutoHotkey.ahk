; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
; semicolon, such as this one, are comments.  They are not executed.

; This script has a special filename and path because it is automatically
; launched when you run the program directly.  Also, any text file whose
; name ends in .ahk is associated with the program, which means that it
; can be launched simply by double-clicking it.  You can have as many .ahk
; files as you want, located in any folder.  You can also run more than
; one ahk file simultaneously and each will get its own tray icon.

; SAMPLE HOTKEYS: Below are two sample hotkeys.  The first is Win+Z and it
; launches a web site in the default browser.  The second is Control+Alt+N
; and it launches a new Notepad window (or activates an existing one).  To
; try out these hotkeys, run AutoHotkey again, which will load this file.

#z::Run www.autohotkey.com
#1::run http://theoldreader.com/
#2::run www.coursera.org
#3::run www.google.com
#4::run http://www.wikipedia.com/
#5::run http://feedly.com/
#6::run http://grs.zju.edu.cn/index.jsf

#!f::run "D:\Program Files\Foxmail 7.2\Foxmail.exe"
#!s::run "D:\Program Files\Sublime Text 3\sublime_text.exe"
#!e::run "D:\Program Files\Everything\Everything.exe"
#!n::run "D:\Program Files (x86)\Evernote\Evernote\Evernote.exe"
#!m::run D:\Users\CSK\GitHub\goagent\local\goagent-uv.exe
#!v::run D:\Program Files\Oracle\VirtualBox\VirtualBox.exe
#!g::run "D:\Program Files (x86)\Git\bin\sh.exe" --login -i
#!u::run D:\program files\geek.exe
#!p::run D:\Program Files (x86)\SumatraPDF\SumatraPDF.exe
#!q::run "D:\Program Files (x86)\Tencent\QQ\QQProtect\Bin\QQProtect.exe"
#!r::run "D:\Program Files (x86)\FeedDemon\FeedDemon.exe"
#!w::run "D:\Program Files (x86)\WizNote\Wiz.exe"
#!y::run "D:\Program Files\Youdao\Dict\YodaoDict.exe"
#!j::run "D:\Program Files (x86)\JabRef\JabRef.exe"

^!n::
IfWinExist Untitled - Notepad
	WinActivate
else
	Run Notepad
return
^!c::run calc
!c::Run cmd


#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode 2    

Activate(t)
{
  IfWinActive,%t%
  {
    WinMinimize
    return
  }
  SetTitleMatchMode 2    
  DetectHiddenWindows,on
  IfWinExist,%t%
  {
    WinShow
    WinActivate           
    return 1
  }
  return 0
}

ActivateAndOpen(t,p)
{
  if Activate(t)==0
  {
    Run %p%
    WinActivate
    return
  }
}

+#P::ActivateAndOpen("Microsoft PowerPoint","Powerpnt.exe")
+#N::ActivateAndOpen("Microsoft Onenote","Onenote.exe")
+#W::ActivateAndOpen("Microsoft Word","Winword.exe")
+#E::ActivateAndOpen("Microsoft Excel","Excel.exe")
+#O::ActivateAndOpen("Microsoft Outlook","outlook.exe")
+#J::ActivateAndOpen("Microsoft Project","WINPROJ.exe")
+#V::ActivateAndOpen("Microsoft Visio","visio.exe")

#Persistent

^NumpadSub:: Send {Volume_Down 1} ; Lower the master volume by 3 intervals. return 
^NumpadAdd:: Send {Volume_Up 1} ; Raise the master volume by 1 interval (typically 5%). return 
^NumpadMult:: Send {Volume_Mute} ; Mute/unmute the master volume. return

;mouse move
#Numpad4::    MouseMove, -1,  0,, R
#Numpad8::    MouseMove,  0, -1,, R
#Numpad6::    MouseMove,  1,  0,, R
#Numpad2::    MouseMove,  0,  1,, R

; Note: From now on whenever you run AutoHotkey directly, this script
; will be loaded.  So feel free to customize it to suit your needs.

; Please read the QUICK-START TUTORIAL near the top of the help file.
; It explains how to perform common automation tasks such as sending
; keystrokes and mouse clicks.  It also explains more about hotkeys.

