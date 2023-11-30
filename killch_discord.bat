@ECHO off
taskkill /f /im discord.exe
set "discordFolder=C:\Users\%USERNAME%\AppData\Local\Discord"

for /d %%i in ("%discordFolder%\app-*") do (
    start "" "%%i\Discord.exe"
    exit
)

exit