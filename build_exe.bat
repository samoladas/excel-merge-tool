@echo off
CALL C:\Users\%USERNAME%\anaconda3\Scripts\activate.bat
rmdir /s /q build
rmdir /s /q dist
del ExcelMergeGUI.spec

pyinstaller --noconfirm --windowed --onefile ^
  --upx-dir "C:\Users\samol\upx-5.0.2-win64" ^
  --exclude-module pandas ^
  --exclude-module numpy ^
  src\ExcelMergeGUI.py

explorer dist
pause
