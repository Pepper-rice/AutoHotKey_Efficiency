; 任务栏鼠标滚轮调节音量大小
#If MouseIsOver("ahk_class Shell_TrayWnd")

WheelUp::
SoundSet +2, MASTER
Run sndvol.exe
SetTimer, CloseVolumeMixer, 1000 ; 设置计时器，1秒后执行CloseVolumeMixer函数
return

WheelDown::
SoundSet -2, MASTER
Run sndvol.exe
SetTimer, CloseVolumeMixer, 1000 ; 设置计时器，1秒后执行CloseVolumeMixer函数
return
#If

MouseIsOver(WinTitle) {
    MouseGetPos,,, Win
    return WinExist(WinTitle . " ahk_id " . Win)
}

CloseVolumeMixer:
WinClose, ahk_class #32770 ahk_exe sndvol.exe
return
