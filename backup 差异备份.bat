@echo on
robocopy    D:\资料\    \\192.168.1.44\backup	/MIR 	/R:3   /W:60  /LOG:copylog.txt
pause
