@echo off
for /d %%a in (*) do (call :hoge "%%a")
goto end

:hoge
cd %~1
set filePath=%~p1
set filePath=%filePath:~0,-1%
for /F "delims=" %%a in ("%filePath%") do set folderName=%%~nxa
copy *.txt ..\"%folderName%".txt
cd ..
exit /b

:end
