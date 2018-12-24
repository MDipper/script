@echo off
set /p host1= 请输入要ping 的目标主机IP 地址:
set logfile=%host1%.log
echo 目标主机= %host1% >%logfile%
for /f "tokens=*" %%A in ('ping %host1% -n 1 ') do (echo %%A>>%logfile% && GOTO Ping)
:Ping
for /f "tokens=* skip=2" %%A in ('ping %host1% -n 1 ') do (
echo %date% %time:~0,2%:%time:~3,2%:%time:~6,2% %%A>>%logfile%
echo %date% %time:~0,2%:%time:~3,2%:%time:~6,2% %%A
findstr /C:"超时" "%host1%.log" > timeout_%logfile%
findstr /C:"无法" "%host1%.log" >> timeout_%logfile%
findstr /C:"失败" "%host1%.log" >> timeout_%logfile%
timeout 1 >NUL
GOTO Ping)