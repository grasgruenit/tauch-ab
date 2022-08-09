rmdir public /s /q

hugo --minify

@echo off

"C:\Program Files (x86)\WinSCP\WinSCP.com" ^
  /log="WinSCP.log" /ini=nul ^
  /command ^
  "open ftp://tauchab:dasisteinsicheresundlangesPW666@mail.grasgruen.it/" ^
  "synchronize remote public /" ^
   "exit"

set WINSCP_RESULT=%ERRORLEVEL%
if %WINSCP_RESULT% equ 0 (
  echo Success
  start https://tauch-ab.at
) else (
  echo Error
)
