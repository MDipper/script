@echo off
set /p host1= ������Ҫping ��Ŀ������IP ��ַ:
set logfile=%host1%.log
echo Ŀ������= %host1% >%logfile%
for /f "tokens=*" %%A in ('ping %host1% -n 1 ') do (echo %%A>>%logfile% && GOTO Ping)
:Ping
for /f "tokens=* skip=2" %%A in ('ping %host1% -n 1 ') do (
echo %date% %time:~0,2%:%time:~3,2%:%time:~6,2% %%A>>%logfile%
echo %date% %time:~0,2%:%time:~3,2%:%time:~6,2% %%A
findstr /C:"��ʱ" "%host1%.log" > timeout_%logfile%
findstr /C:"�޷�" "%host1%.log" >> timeout_%logfile%
findstr /C:"ʧ��" "%host1%.log" >> timeout_%logfile%
timeout 1 >NUL
GOTO Ping)