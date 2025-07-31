# Optimization Notes

### Αρχικό .exe μέγεθος:
~630MB με pandas

### Τελικό .exe μέγεθος:
~18MB με openpyxl + UPX

### Τεχνικά βήματα:
- Αφαίρεση pandas
- Χρήση openpyxl αποκλειστικά
- Αντικατάσταση DataFrame με raw openpyxl access
- Χρήση pyinstaller με --onefile + --upx-dir
