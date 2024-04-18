@ECHO OFF
SET P=E

title 		M A I N   M E N U
@REM color 57
CLS
:MENU
ECHO ...............................................
ECHO 		Dhandrohith
ECHO Prgram name: Rgit.bat 
ECHO Project Path: %P%:\Users\Public\PRV\PyraN_2024\in_progress\mobile_devlop\flutter\Nodejs_Express_Mysql_Axio\DHAND_ROHITH
ECHO ...............................................
ECHO.
ECHO BASIC GIT COMMANDS:
ECHO 10 - git status
ECHO 11 - git log --online
ECHO.
ECHO THIS PROJET GIT COMMANDS:
ECHO 20 - View Remote Origin
ECHO 21 - View Full branch list
ECHO 22 - Checkout branch 
ECHO 23 - Add .
ECHO 24 - Add . and Commit
ECHO 25 - Push
ECHO 26 - Set Remote Origin Url
ECHO.
ECHO BRANCHING:
ECHO 34 - Push an existing repository from the command line
ECHO 35 - Create a New branch and checkout
ECHO 36 - Push to Newly created branch (branch not existing remotly)
ECHO 37 - Pull -all
ECHO.
ECHO E X I T
@REM ECHO 98 - Restart
ECHO 99 - EXIT
ECHO.
SET /P M=Type Option then press ENTER:
IF %M%==10 GOTO TAG-10
IF %M%==10 GOTO TAG-11
IF %M%==20 GOTO TAG-20
IF %M%==21 GOTO TAG-21
IF %M%==22 GOTO TAG-22
IF %M%==23 GOTO TAG-23
IF %M%==24 GOTO TAG-24
IF %M%==25 GOTO TAG-25
IF %M%==26 GOTO TAG-26
IF %M%==34 GOTO TAG-34
IF %M%==35 GOTO TAG-35
IF %M%==36 GOTO TAG-36
IF %M%==37 GOTO TAG-37
IF %M%==99 GOTO EOF

:TAG-10
CLS
ECHO 10 - git status
ECHO _______________
git status
pause
CLS
GOTO MENU

:TAG-11
CLS
ECHO 11 - git log --online
ECHO _____________________
git log --online
pause
CLS
GOTO MENU

:TAG-20
CLS
ECHO 20 - View Remote Origin
ECHO _______________________
git remote -v
pause
CLS
GOTO MENU

:TAG-21
CLS
ECHO 21 - View Full branch list
ECHO __________________________
git branch -a
pause
CLS
GOTO MENU

:TAG-22
CLS
ECHO 22 - Checkout branch
ECHO ____________________
set /p branch= Enter New branch name to create:
echo You entered: %branch%
set /p confrm= Are you sure? (1=No, 2=Yes, 3=Exit):
IF %confrm%==1 GOTO TAG-22
IF %confrm%==3 GOTO MENU
IF %confrm%==2 GOTO TAG-CONTINUE-22
echo Invalid branch name . . try again
pause
GOTO TAG-22
:TAG-CONTINUE-22
git checkout %branch%
git branch -a
ECHO Now make changes and execute Opton 24
pause
CLS
GOTO MENU

:TAG-23
CLS
ECHO 23 - Add .
ECHO __________
git add .
@REM ECHO add . SUCCEEED. . .
pause
CLS
GOTO MENU

:TAG-24
CLS
ECHO 24 - Add . and Commit
ECHO _____________________
set /p msg= Enter Commit msg:
echo You entered: %msg%
set /p confrm= Are you sure? (1=No, 2=Yes, 3=Exit):
IF %confrm%==1 GOTO TAG-24
IF %confrm%==3 GOTO MENU
IF %confrm%==2 GOTO TAG-CONTINUE-24
echo Invalid answer . . try again
pause
GOTO TAG-24
:TAG-CONTINUE-24
git add .
git commit -m "%msg%"
@REM ECHO COMMIT SUCCEEED. . .
pause
CLS
GOTO MENU

:TAG-25
CLS
ECHO 25 - Push
ECHO _________
git push
@REM ECHO push SUCCEEED. . .
pause
CLS
GOTO MENU

:TAG-27
CLS
ECHO 
ECHO _______________________________________
@REM git remote set-url origin %this_repo%
pause
CLS
GOTO MENU

:TAG-26
CLS
ECHO 26 - Set Remote Origin Url
ECHO __________________________
set /p url= Enter Remote Url:
echo You entered: %url%
set /p confrm= Are you sure? (1=No, 2=Yes, 3=Exit):
IF %confrm%==1 GOTO TAG-26
IF %confrm%==3 GOTO MENU
IF %confrm%==2 GOTO TAG-CONTINUE-26
echo Invalid url . . try again
pause
GOTO TAG-26
:TAG-CONTINUE-26
@REM git remote set-url origin "%url%"
git remote add origin "%url%"
git remote -v
pause
CLS
GOTO MENU

:TAG-34
CLS
ECHO 34 - Push an existing repository from the command line
ECHO ______________________________________________________
set /p url= Enter Remote Url:
echo You entered: %url%
set /p confrm= Are you sure? (1=No, 2=Yes, 3=Exit):
IF %confrm%==1 GOTO TAG-34
IF %confrm%==3 GOTO MENU
IF %confrm%==2 GOTO TAG-CONTINUE-34
echo Invalid url . . try again
pause
GOTO TAG-34
:TAG-CONTINUE-34
@REM git remote set-url origin "%url%"
git remote add origin %url%%
git branch -M master
git push -u origin master
pause
CLS
GOTO MENU

:TAG-35
CLS
ECHO 35 - Create a New branch and checkout
ECHO _______________________________________
set /p new_branch= Enter New branch name to create:
echo You entered: %new_branch%
set /p confrm= Are you sure? (1=No, 2=Yes, 3=Exit):
IF %confrm%==1 GOTO TAG-35
IF %confrm%==3 GOTO MENU
IF %confrm%==2 GOTO TAG-CONTINUE-35
echo Invalid branch name . . try again
pause
GOTO TAG-35
:TAG-CONTINUE-35
git checkout -b %new_branch%
git branch -a
ECHO Now make changes and execute Opton 24
pause
CLS
GOTO MENU

:TAG-36
CLS
@REM ECHO 36 - Push to Newly created branch (branch not existing remotly)
ECHO 36 - Push branch 
ECHO ________________
@REM set /p new_branch= Enter New branch name to push:
@REM echo You entered: %new_branch%
@REM set /p confrm= Are you sure? (1=No, 2=Yes, 3=Exit):
@REM IF %confrm%==1 GOTO TAG-36
@REM IF %confrm%==3 GOTO MENU
@REM IF %confrm%==2 GOTO TAG-CONTINUE-36
@REM echo Invalid branch name . . try again
@REM pause
@REM GOTO TAG-36
@REM :TAG-CONTINUE-36
git push -u origin HEAD
git branch -a
pause
CLS
GOTO MENU

:TAG-37
CLS
ECHO 37 - Pull -all
ECHO _______________
git pull --all
pause
CLS
GOTO MENU

:EOF
ECHO Program ended. .  
