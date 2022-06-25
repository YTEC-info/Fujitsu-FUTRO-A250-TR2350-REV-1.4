@ECHO off

GFLASHIT BIOS.ROM /n
goto errorcode

:ErrorCode
if errorlevel 1 GOTO Error
if errorlevel 0	GOTO NoError

:Error
	ECHO.
	ECHO Flash Update failed!
	ECHO.
	GOTO End

:NoError
	ECHO.
	ECHO Flash Update completed successfully.
	ECHO.
	GOTO End

:End
