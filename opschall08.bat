@echo off

echo Backing Up Your Files...

ROBOCOPY "C:\Users\j.thompson\Desktop\My Project Files" "C:\Users\j.thompson\Desktop\My Project Files" /e /LOG:Backup.txt

pause

echo BACKUP COMPLETE!
