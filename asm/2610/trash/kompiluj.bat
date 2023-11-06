@echo off
:loop
set /p input="Podaj nazwe pliku: "
if /i "%input%"=="exit" (
    goto :eof
)
nasm -o %input%.com -f bin %input%.asm
goto loop