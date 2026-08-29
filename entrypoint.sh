#!/bin/sh

mkdir -p /minecraft/game-conf
cd /minecraft/game-conf

if [ "$EULA" = "true" ]; then
    echo "eula=true" > eula.txt
    exec java -jar /minecraft/server.jar
    else 
        echo "You need to agree to EULA to launch server"
        exit 1
fi