@echo off
:: If you want to set default values, please edit the line below.
set ngrok_token=

if "%ngrok_token%"=="" (
    set /p ngrok_token=input ngrok token: 
) else (
    echo using default ngrok token.
)

main.exe start --https false  --ngrok_token %ngrok_token%
