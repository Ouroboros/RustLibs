@echo off
rem echo ORIG: %*

rem set "RUST_TARGET=i686-pc-windows-gnu"
set "args=%*"
set "command=%1"

if not [%command%] == [build] goto:call_cargo
if not defined RUST_TARGET goto:call_cargo

set "args="
set "command=%command% --target %RUST_TARGET%"

shift

:parse
if "%~1" neq "" (
    set args=%args% %1
    shift
    goto :parse
)

if defined args set args=%args:~1%
set args=%command% %args%

rem echo SHIFT: %args%

:call_cargo

cargo.exe %args%
