#!/usr/bin/env bash
set -euo pipefail

ps -C dde-dock -o pid=,pcpu= |
    awk -vORS= --assign maxcpu=20.0 '$2>maxcpu {
        print "Killing dde-dock, pid:",$1," ";
        system("date");
        system("kill " $1);
        system("notify-send \"Respawning dock\"")
    }' >> ~/.dock-crash.log
