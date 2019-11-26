@echo off

REM initializing random variable
set /a var=%random%

REM creating a folder on desktop if it doesn't exist
if not exist "%USERPROFILE%\Desktop\Screen-Captures\" mkdir "%USERPROFILE%\Desktop\Screen-Captures\"

REM normal cpu output WITH AUDIO, you should change that to the name of your audio device found with "ffmpeg -list_devices true -f dshow -i dummy"
ffmpeg -f gdigrab -framerate 10 -i desktop -f dshow -i audio="Microphone (USB Audio Device)" -c:v libx264 -crf 0 -preset ultrafast "%USERPROFILE%\Desktop\Screen-Captures\%var%.mkv"

REM nvidia's hardware acceleration
REM ffmpeg -f gdigrab -framerate 10 -i desktop -c:v h264_nvenc -qp 0 "%USERPROFILE%\Desktop\Screen-Captures\%var%.mkv"

REM converting file to save space. You can edit the output's format too!
ffmpeg -i "%USERPROFILE%\Desktop\Screen-Captures\%var%.mkv" -c:v libx264 -crf 0 -preset veryslow "%USERPROFILE%\Desktop\Screen-Captures\%var%-out.mkv"
REM deleting original file
del "%USERPROFILE%\Desktop\Screen-Captures\%var%.mkv"

REM unsetting my variable
set "var="

REM press key to continue
pause