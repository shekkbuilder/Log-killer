::This Tool By Rizer
::License = WTFPL [Do what the fuck you want to , public license]
::Thanks To SystemCrashers Teams
@echo off
color 7
title Log Killer
echo ############################################
echo #                                          #
echo # Log killer By Rizer (Github [ @Rizer0 ]) #
echo #                                          # v 1.0
echo #   This tool going to delete all logs !   #
echo #                                          #
echo ############################################
timeout 5
:home
for /F "tokens=*" %%G in ('wevtutil.exe el') DO (call :clear "%%G")
echo.
echo logs has deleted
timeout 5
goto :home
:clear
echo [+] %1
wevtutil.exe cl %1
goto :eof
:theEnd