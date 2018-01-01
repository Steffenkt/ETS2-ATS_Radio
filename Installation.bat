@echo off

:Part1

echo Fuer welchen Simulator wollen Sie die Radioliste installieren?
echo [E]uro Truck Simulator 2
echo [A]merican Truck Simulator
echo [B]eide
set /p EingabeSim=
goto Part2
:Part2
if %EingabeSim%==E goto Part3
if %EingabeSim%==e goto Part3

if %EingabeSim%==A goto Part4
if %EingabeSim%==a goto Part4

if %EingabeSim%==B goto Part5
if %EingabeSim%==b goto Part5

goto Part6
:Part3
if exist "C:\Users\%USERNAME%\Documents\Euro Truck Simulator 2\live_streams.sii" goto Part8
goto Part7
:Part4
if exist "C:\Users\%USERNAME%\Documents\American Truck Simulator\live_streams.sii" goto Part9
goto Part7
:Part5
if exist "C:\Users\%USERNAME%\Documents\Euro Truck Simulator 2\live_streams.sii" if exist "C:\Users\%USERNAME%\Documents\American Truck Simulator\live_strbeams.sii" goto Part10
goto Part7
:Part6
cls
echo Keine Gueltige Eingabe. Bitte versuche es erneut
goto Part1
:Part7
cls
echo Der ausgewaehlte Simulator scheint nicht installiert zu sein. Bitte wähle einen installierten Simulator aus oder installieren Sie den gewuenschten Simulator.
goto Part1
:Part8
xcopy live_streams.sii "C:\Users\%USERNAME%\Documents\Euro Truck Simulator 2\live_streams.sii" /Y
goto Part11
:Part9
xcopy live_streams.sii "C:\Users\%USERNAME%\Documents\American Truck Simulator\live_streams.sii" /Y
goto Part11
:Part10
xcopy live_streams.sii "C:\Users\%USERNAME%\Documents\Euro Truck Simulator 2\live_streams.sii" /Y
xcopy live_streams.sii "C:\Users\%USERNAME%\Documents\American Truck Simulator\live_streams.sii" /Y
goto Part11
:Part11
cls
echo Die neue Radioliste wurde erfolgreich eingespielt. Viel Spass mit deiner neuen Radioliste.
PAUSE