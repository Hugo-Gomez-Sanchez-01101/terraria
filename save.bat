@echo off
cls
echo ======================================
echo             Guardando...
echo ======================================
cd /d %~dp0
set TIMESTAMP=%date:~-4%%date:~3,2%%date:~0,2%_%time:~0,2%%time:~3,2%%time:~6,2%
git add .
git commit -m "%TIMESTAMP%"
git push

exit