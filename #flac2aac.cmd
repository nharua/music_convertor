REM If you just want to run the command directly, and not the batch file, 
REM please REMEMBER to change the variable name from %%a to a single %a, in all instances where the variable is used!

REM for /f "delims=*" %%a in ('dir /b .\*.flac'); do ffmpeg -i "%%a" -acodec aac "%%~na.mp3"
REM ffmpeg -i input -f flac - | fdkaac -I -m 5 - -o output.m4a
for /f "delims=*" %%a in ('dir /b .\*.flac'); do ffmpeg -i "%%a" -c:a libfdk_aac -profile:a aac_he_v2 -b:a 32k output.m4a