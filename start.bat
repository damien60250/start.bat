:menu
@echo off & color a & cls & title start.bat creer par TheZerox
mode 60,20
color a
echo.
echo         Programme de lancement de serveurs FiveM
echo.
echo        [1] Lancer Serveur     [2] Creer une backup
echo.
echo                  [3] Besoin d'aide
echo.
set /p answer="Quelle option choisissez-vous ? > "
if /i {%ANSWER%}=={1} (goto :1)
if /i {%ANSWER%}=={2} (goto :2)
if /i {%ANSWER%}=={3} (goto :3)
goto :menu
exit

:1
color b
echo.
echo Suppression du cache en cours...
RMDIR /s /q "C:\Users\livio\Desktop\Nom de ta base\cfx-server-data\cache"
ping localhost -n 5 >nul
echo.
echo Dossier cache supprime !
ping localhost -n 5 >nul
echo.
echo Lancement de votre serveur FiveM en cours...
ping localhost -n 5 >nul
echo.
cd /d D:\nomdossier
C:\Users\livio\Desktop\Nom de ta base\FXServer.exe +exec server.cfg
ping localhost -n 8 >nul
echo.
echo Lancement du serveur reussi !
echo.
echo Pour fermer cette fenetre merci d'appuyer sur une touche.
pause
exit


:2
color 0c
echo -----------------------------------
echo Creation d'une backup en cours...
echo -----------------------------------
ping localhost -n 8 >nul
XCOPY D:\nomdossier D:\nomdossier-backup\ /m /e /y
echo.
echo Backup cree avec succes !
ping localhost -n 5 >nul
exit

:3
echo.
color 0c
echo Aide : envoi message priver a  damien60#3947
echo.
echo.
ping localhost -n 15 >nul
echo.
echo Fermeture du programme en cours...
ping localhost -n 10 >nul
exit