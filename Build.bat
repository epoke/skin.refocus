@echo off
ECHO ------------------------------
echo Creating reFocus Build Folder
rmdir BUILD /S /Q
md BUILD

ECHO ------------------------------
ECHO Building Skin Directory...
xcopy "720p" "BUILD\skin.refocus.korean\720p" /E /Q /I /Y
xcopy "colors" "BUILD\skin.refocus.korean\colors" /E /Q /I /Y
xcopy "backgrounds" "BUILD\skin.refocus.korean\backgrounds" /E /Q /I /Y
xcopy "fonts" "BUILD\skin.refocus.korean\fonts" /E /Q /I /Y
xcopy "language" "BUILD\skin.refocus.korean\language" /E /Q /I /Y
xcopy "language\English" "BUILD\skin.refocus.korean\language\English" /E /Q /I /Y
xcopy "language\Korean" "BUILD\skin.refocus.korean\language\Korean" /E /Q /I /Y
xcopy "playlists" "BUILD\skin.refocus.korean\playlists" /E /Q /I /Y
xcopy "sounds" "BUILD\skin.refocus.korean\sounds" /E /Q /I /Y
xcopy "*.xml" "BUILD\skin.refocus.korean\" /Q /I /Y
xcopy "*.txt" "BUILD\skin.refocus.korean\" /Q /I /Y
xcopy "*.png" "BUILD\skin.refocus.korean\" /Q /I /Y
xcopy "*.jpg" "BUILD\skin.refocus.korean\" /Q /I /Y
xcopy "*.md" "BUILD\skin.refocus.korean\" /Q /I /Y

ECHO ------------------------------
ECHO Creating XBT File...
START /B /WAIT TexturePacker.exe -input media\ -output media\Textures.xbt
xcopy "media\*.xbt" "BUILD\skin.refocus.korean\media\" /Q /I /Y

REM ECHO ------------------------------
REM ECHO Cleaning Up...
REM del "media\*.xbt"

REM ECHO ------------------------------
REM ECHO Copying Image Files...
REM xcopy "media\*.*" "BUILD\skin.refocus.korean\media\" /E /Q /I /Y

echo Build Complete - Scroll Up to check for errors.
pause