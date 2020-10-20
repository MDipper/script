@echo on
net use Z: /del
net use Z: \\10.10.20.7\backup "" /user:"administrator"  /persistent:yes
rem 删除E:\adel_backup目录下7天前的*.dbb *.bak文件
Forfiles /p "E:\adel_backup" /s /d -7 /m *.bak /c "cmd /c del /q /f @path"
rem 备份adel数据库
robocopy    Z:\    E:\adel_backup	/MIR 	/R:3   /W:60  /LOG:copylog.txt
