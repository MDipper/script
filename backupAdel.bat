@echo on
net use Z: /del
net use Z: \\10.10.20.7\backup "" /user:"administrator"  /persistent:yes
rem ɾ��E:\adel_backupĿ¼��7��ǰ��*.dbb *.bak�ļ�
Forfiles /p "E:\adel_backup" /s /d -7 /m *.bak /c "cmd /c del /q /f @path"
rem ����adel���ݿ�
robocopy    Z:\    E:\adel_backup	/MIR 	/R:3   /W:60  /LOG:copylog.txt
