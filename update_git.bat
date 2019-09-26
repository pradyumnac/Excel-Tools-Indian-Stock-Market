@echo off 
git status
echo Enter message: (q to cancel update):
set /p message=" "
if "%message%"=="q" (
	echo "Quitting. No harm done."
) else (
	echo "Continuing git update"
	git add .
	git commit -a -m "%message"
	git push
)
set /p message="Press any key to exit.."