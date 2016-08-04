#!/usr/bin/env bash

RED='\033[0;31m'
GREEN='\033[0;32m'
WHITE='\033[0;37m'
ANTLR='/usr/local/Cellar/antlr/4.5.2/antlr-4.5.2-complete.jar'

case "$1" in
  "-c")
       echo "${GREEN}## Compiling...${WHITE}"
       javac -cp ${ANTLR}:build/classes/main src/main/*.java
   ;;

   "-r")
        echo "${GREEN}## Running...${WHITE}"
        if [ $2 ]
          then
            java -cp /usr/local/Cellar/antlr/4.5.2/antlr-4.5.2-complete.jar:build/classes/main Wolf $2
        else
          java -cp /usr/local/Cellar/antlr/4.5.2/antlr-4.5.2-complete.jar:build/classes/main Wolf
        fi
  ;;
  *)
        echo "${RED}## Wrong option $1"
  ;;
esac

# antlr4 Easy.g4 -no-listener -visitor
# javac -cp /usr/local/Cellar/antlr/4.5.2/antlr-4.5.2-complete.jar: *.java
# javac -cp /usr/local/Cellar/antlr/4.5.2/antlr-4.5.2-complete.jar:build/classes/main src/main/*.java
# gradle -s grun -Pwolfargs="['last.wlf']"
