@echo off

rd /q /s build

mkdir build
mkdir build\@anrop_ace_ragdoll
xcopy /e /i /y /s mod build\diwako_ragdoll

REM Remove old drive mapping
subst p: /d > nul

REM Mount current folder
subst p: build

REM Build pbo files using pboproject and check for errors
pboproject +Clean -Engine=Arma3 -Key -Workspace=P:\ -Noisy -P +Mod="P:\@anrop_ace_ragdoll" -F +W -Z P:\diwako_ragdoll

REM Remove drive mapping
subst p: /d
