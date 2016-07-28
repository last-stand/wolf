#!/bin/bash
if [ $1 ]
  then
    java -cp /usr/local/Cellar/antlr/4.5.2/antlr-4.5.2-complete.jar:build/classes/main Wolf $1
else
  java -cp /usr/local/Cellar/antlr/4.5.2/antlr-4.5.2-complete.jar:build/classes/main Wolf
fi
# antlr4 Easy.g4 -no-listener -visitor
# javac -cp /usr/local/Cellar/antlr/4.5.2/antlr-4.5.2-complete.jar: *.java
# gradle -s grun -Pwolfargs="['last.wlf']"
