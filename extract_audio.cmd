REM If you just want to run the command directly, and not the batch file, 
REM please REMEMBER to change the variable name from %%a to a single %a, in all instances where the variable is used!

for /f "delims=*" %%a in ('dir /b .\*.mp4'); do ffmpeg -hide_banner -n -threads 8 -i "%%a" -ab 192000 -vn -acodec libmp3lame "%%~na.mp3"