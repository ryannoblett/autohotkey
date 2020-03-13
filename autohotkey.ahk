#UseHook On
#MaxHotkeysPerInterval 2000

; win + v - type paste
#v::
  Sleep 1000
  SetKeyDelay, 20, 1
  SendRaw % RegExReplace(clipboard, "\r\n?|\n\r?", "`n")
  return

; win + shift + v - type paste
#+v::
  Sleep 1000
  SetKeyDelay, 20, 1
  Send % RegExReplace(clipboard, "\r\n?|\n\r?", "`n")
  return


;; Wheel Scroll Tabs for Google Chrome 

#IfWinActive ahk_class Chrome_WidgetWin_1 
 ~$WheelDown:: 
 ~$WheelUp:: 
    MouseGetPos,, yaxis 
    IfGreater,yaxis,38, Return 
    IfEqual,A_ThisHotkey,~$WheelDown, Send ^{PgDn} 
                                 Else Send ^{PgUp} 
Return 
#IfWinActive

