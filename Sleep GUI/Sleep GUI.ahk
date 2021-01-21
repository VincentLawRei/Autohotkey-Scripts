Menu, Tray, Icon, arrow-blue.ico

^l::
InputBox, minute, Lock your PC, Через сколько минут заблокировать компьютер?, , 320, 150
if (ErrorLevel)
{
    MsgBox, 0, PC Lock, PC will not be locked, 3
    return
} else if (minute == 0 or minute == "")
{
    MsgBox, 0, PC Lock, Указано пустое значение, 3
    return
}
else
{
    MsgBox, Компьютер будет заблокирован через "%minute% минут"
}
minute *= 1000 * 60
sleep, %minute%
DllCall("user32.dll\LockWorkStation")
