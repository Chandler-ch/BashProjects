#!/bin/bash
hostname=$(hostname)
version=$(cat /etc/os-release | cut -d= -f2 | head -n 1)
CPU=$(lscpu | head -n 8 | tail -1 | cut -dA -f2)
Cores=$(nproc)
ramInsg=$(free | cut -d' ' -f10 | head -n 2 | tail -1)
ramUsed=$(free | cut -d' ' -f16 | head -n 2 | tail -1)
ramFree=$((ramInsg-ramUsed))
speicherFree=$(df -h / | cut -d' ' -f12 | tail -1)
speicherInsg=$(df -h / | cut -d' ' -f8 | tail -1)
upzeit=$(uptime | cut -d, -f1)
zeitpunkt=$(date '+%Y-%m-%d_%H%M')
echo 'Bitte eintippen was sie wissen wollen über ihr System.'
echo 'Zur Verfügung stehen -Hostname- ("h"), -Version- ("v"), -CPU und Cores- ("c"), Informationen über RAM-Verbrauch ("r"), Informationen über den Speicherverbrauch ("s"), Die aktuelle Uhrzeit und wie lange das Gerät schon läuft ("z"), oder alles zusammen. ("all")'
echo 'wenn die Daten Dokumentiert werden sollten dann geben sie ("all -f") ein. Dann wird die Ausgabe in ein externes File geprintet.'
read userInput
case $userInput in
	"h")
	echo ' '
	echo $hostname ist der Hostname.
	echo ' '
	echo ' '
	;;
"v")
echo ' '
echo $version ist die aktuelle Linux Version.
echo ' '
echo ' '
;;
	"c")
	echo ' '
	echo A$CPU ist die aktuelle CPU.
	echo ' '
	echo $Cores ist die aktuelle Anzahl an CPU Cores.
	echo ' '
	echo ' '
	;;
"r")
echo ' '
echo $ramInsg ist die insgesamte Menge RAM und $ramUsed ist die Menge die wir gerade benutzen.
echo demnach ist $ramFree die Menge die noch frei ist.
echo ' '
echo ' '
;;
	"s")
	echo ' '
	echo $speicherFree >> Dok2
	echo $speicherInsg >> Dok1
	echo Der freie Speichertrag beträgt $speicherFree
	echo Der Speicherplatz insgesamt beträgt dabei $speicherInsg
	Rechnung1=$(cut -dG -f1 Dok1)
	Rechnung2=$(cut -dG -f1 Dok2)
	speicherUsed=$((Rechnung1-Rechnung2))
	rm Dok*
	echo Der benutzte Speicherplatz beträgt demnach $speicherUsed
	echo ' '
	echo ' '
	;;
"z")
echo ' '
echo Die Uhrzeit gerade ist $upzeit läuft das System
echo ' '
echo ' '
;;
	"all")
	echo ' '
        echo $hostname ist der Hostname.
	echo ' '
	echo $version ist die aktuelle Linux Version.
	echo ' '
        echo A$CPU ist die aktuelle CPU.
        echo ' '
        echo $Cores ist die aktuelle Anzahl an CPU Cores.
	echo ' '
	echo $ramInsg ist die insgesamte Menge RAM und $ramUsed ist die Menge die wir gerade benutzen.
	echo demnach ist $ramFree die Menge die noch frei ist.
	echo ' '
        echo $speicherFree >> Dok2
        echo $speicherInsg >> Dok1
        echo Der freie Speichertrag beträgt $speicherFree
        echo Der Speicherplatz insgesamt beträgt dabei $speicherInsg
        Rechnung1=$(cut -dG -f1 Dok1)
        Rechnung2=$(cut -dG -f1 Dok2)
        speicherUsed=$((Rechnung1-Rechnung2))
        rm Dok*
        echo Der benutzte Speicherplatz beträgt demnach $speicherUsed
	echo ' '
echo Die Uhrzeit gerade ist $upzeit läuft das System
echo ' '
echo ' '
;;
	"all -f")
echo ' '
        echo $hostname ist der Hostname.
        echo ' '
        echo $version ist die aktuelle Linux Version.
        echo ' '
        echo A$CPU ist die aktuelle CPU.
        echo ' '
        echo $Cores ist die aktuelle Anzahl an CPU Cores.
        echo ' '
        echo $ramInsg ist die insgesamte Menge RAM und $ramUsed ist die Menge die wir gerade benutzen.
        echo demnach ist $ramFree die Menge die noch frei ist.
        echo ' '
        echo $speicherFree >> Dok2
        echo $speicherInsg >> Dok1
        echo Der freie Speichertrag beträgt $speicherFree
        echo Der Speicherplatz insgesamt beträgt dabei $speicherInsg
        Rechnung1=$(cut -dG -f1 Dok1)
        Rechnung2=$(cut -dG -f1 Dok2)
        speicherUsed=$((Rechnung1-Rechnung2))
        rm Dok*
        echo Der benutzte Speicherplatz beträgt demnach $speicherUsed
        echo ' '
echo Die Uhrzeit gerade ist $upzeit läuft das System
echo ' '
echo ' '


echo ' ' >> Abfragen/[$zeitpunkt]-sys-[$hostname].info
        echo $hostname ist der Hostname. >> Abfragen/[$zeitpunkt]-sys-[$hostname].info
        echo ' ' >> Abfragen/[$zeitpunkt]-sys-[$hostname].info
        echo $version ist die aktuelle Linux Version. >> Abfragen/[$zeitpunkt]-sys-[$hostname].info
        echo ' ' >> Abfragen/[$zeitpunkt]-sys-[$hostname].info
        echo A$CPU ist die aktuelle CPU. >> Abfragen/[$zeitpunkt]-sys-[$hostname].info
        echo ' ' >> Abfragen/[$zeitpunkt]-sys-[$hostname].info
        echo $Cores ist die aktuelle Anzahl an CPU Cores. >> Abfragen/[$zeitpunkt]-sys-[$hostname].info
        echo ' ' >> Abfragen/[$zeitpunkt]-sys-[$hostname].info
        echo $ramInsg ist die insgesamte Menge RAM und $ramUsed ist die Menge die wir gerade benutzen. >> Abfragen/[$zeitpunkt]-sys-[$hostname].info
        echo demnach ist $ramFree die Menge die noch frei ist. >> Abfragen/[$zeitpunkt]-sys-[$hostname].info
        echo ' ' >> Abfragen/[$zeitpunkt]-sys-[$hostname].info
        echo $speicherFree >> Dok2
        echo $speicherInsg >> Dok1
        echo Der freie Speichertrag beträgt $speicherFree >> Abfragen/[$zeitpunkt]-sys-[$hostname].info
        echo Der Speicherplatz insgesamt beträgt dabei $speicherInsg >> Abfragen/[$zeitpunkt]-sys-[$hostname].info
        Rechnung1=$(cut -dG -f1 Dok1)
        Rechnung2=$(cut -dG -f1 Dok2)
        speicherUsed=$((Rechnung1-Rechnung2))
        rm Dok*
        echo Der benutzte Speicherplatz beträgt demnach $speicherUsed >> Abfragen/[$zeitpunkt]-sys-[$hostname].info
        echo ' ' >> Abfragen/[$zeitpunkt]-sys-[$hostname].info
echo Die Uhrzeit gerade ist $upzeit läuft das System >> Abfragen/[$zeitpunkt]-sys-[$hostname].info
echo ' ' >> Abfragen/[$zeitpunkt]-sys-[$hostname].info
echo ' ' >> Abfragen/[$zeitpunkt]-sys-[$hostname].info
;;
esac
