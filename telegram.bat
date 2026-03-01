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

start "zapret: telegram" /min "%BIN%winws.exe" ^
--wf-tcp=80,443,6695-6705,8000-8020,%GameFilter% --wf-udp=443,19294-19344,50000-50100,%GameFilter% ^
--filter-tcp=80 --hostlist="%LISTS%list-telegram.txt" --hostlist-exclude="%LISTS%list-exclude-telegram.txt" --ipset="%LISTS%ipset-telegram.txt" --ipset-exclude="%LISTS%ipset-exclude.txt" --dpi-desync=split2 --dpi-desync-autottl=2 --dpi-desync-fooling=badseq --new ^
--filter-tcp=443 --hostlist="%LISTS%list-telegram.txt" --hostlist-exclude="%LISTS%list-exclude-telegram.txt" --ipset="%LISTS%ipset-telegram.txt" --ipset-exclude="%LISTS%ipset-exclude.txt" --dpi-desync=fake --dpi-desync-repeats=6 --dpi-desync-fooling=badseq --dpi-desync-fake-tls="%BIN%tls_clienthello_www_google_com.bin" --new ^
--filter-udp=443 --hostlist="%LISTS%list-telegram.txt" --hostlist-exclude="%LISTS%list-exclude-telegram.txt" --ipset="%LISTS%ipset-telegram.txt" --ipset-exclude="%LISTS%ipset-exclude.txt" --dpi-desync=fake --dpi-desync-repeats=6 --dpi-desync-fake-quic="%BIN%quic_initial_www_google_com.bin"