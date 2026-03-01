@echo off
chcp 65001 > nul
:: 65001 - UTF-8

cd /d "%~dp0"
call service.bat status_zapret
call service.bat check_updates
call service.bat load_game_filter
echo:

set "BIN=%~dp0bin\"
set "LISTS=%~dp0lists\"
cd /d %BIN%

start "zapret: %~n0 config" /min "%BIN%winws.exe" ^
--wf-tcp=80,443,2053,2083,2087,2096,8443 --wf-udp=443,50000-65535 ^
--filter-udp=443 --hostlist="%LISTS%discord.txt" --hostlist-exclude="%LISTS%exclude-discord.txt" --ipset-exclude="%LISTS%ipset-exclude-discord.txt" --dpi-desync=fake --dpi-desync-repeats=6 --dpi-desync-fake-quic="%BIN%quic_initial_www_google_com.bin" --new ^
--filter-udp=50000-65535 --filter-l7=discord,stun --dpi-desync=fake --dpi-desync-repeats=6 --new ^
--filter-tcp=2053,2083,2087,2096,8443 --hostlist-domains=discord.media --dpi-desync=hostfakesplit --dpi-desync-repeats=4 --dpi-desync-fooling=ts --dpi-desync-hostfakesplit-mod=host=www.google.com --new ^
--filter-tcp=80,443 --hostlist="%LISTS%discord.txt" --hostlist-exclude="%LISTS%exclude-discord.txt" --ipset-exclude="%LISTS%ipset-exclude-discord.txt" --dpi-desync=hostfakesplit --dpi-desync-repeats=4 --dpi-desync-fooling=ts,md5sig --dpi-desync-hostfakesplit-mod=host=www.ozon.ru