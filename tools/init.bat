set "RUST_PATH=%~dp0"
set "PATH=%~dp0;%RUST_PATH%bin;%PATH%"

if exist "%RUST_PATH%\rust32" (
    set "RUST_TARGET=i686-pc-windows-gnu"
) else (
    set "RUST_TARGET="
)
