@echo off
cd C:\dev\robots\first-robot
call robot -d results/edge -v BROWSER:edge tests/Crm.robot
REM call robot -d results --include smoke tests/Crm.robot
REM call robot -d C:\dev\robots\first-robot -i smoke tests/Crm.robot