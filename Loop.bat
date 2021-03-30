@echo off
title [newgame]
color 0A
if "%1" neq "" (goto %1)
:Menu
cls
echo 1. Start
echo 2. Credits
echo 3. exit
set /p answer=Type the number of your option and press enter  :
if %answer%==1 goto Start_1
if %answer%==2 goto Credits
if %answer%==3 goto Exit
:Exit
cls
echo Thanks for playing!
pause
exit /b
:Credits
cls
echo  Thank you for playing Loop!
echo  This is my first atempt at a game!
echo  If you find any problems, contact me at samuelgustin00@gmail.com
echo  programmed by Samuel Gustin
echo  Embryo Games(TM)
echo  LogicBomb Entertainment(TM)
pause
goto Menu
:Start_1
cls
echo Oh no! You're surrounded by enemies.
echo There are five of them, and they're all armed.
echo If you fight them, you have a high chance of winning.
set /p answer=Would you like to fight or run?
if %answer%==fight goto Fight_1
if 5answer%==run goto Run_1
pause
:Run_1
cls
echo You live to fight another day.
pause
goto Start_1
:Fight_1
echo Prepare to fight.
echo The enemies suddenly rush you all at once.
set /p answer= Type 1 and Enter to continue.
if %answer%==1 goto Fight_1_Loop
:Fight_1_Loop
set /a num=%random%
if %num% gtr 4 goto Fight_1_Loop
if %num% lss 1 goto Fight_1_Loop
if %num%==1 goto Lose_Fight_1
if %num%==2 goto Win_Fight_1
if %num%==3 goto Win_Fight_1
if %num%==4 goto Win_Fight_1
:Lose_Fight_1
cls
echo You were defeated. Play Again?
pause
goto Menu
:Win_Fight_1
cls
echo You are victorious!
set /p answer=Would you like to save? [y/n]
if %answer%=='y' goto 'Save'
if %answer%=='n' goto 'Start_2'