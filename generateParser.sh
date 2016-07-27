#!/usr/bin/env bash
GREEN='\033[0;32m'
RED='\033[0;31m'
WHITE='\033[0m'
YELLOW='\033[0;33m'
PURPLE='\033[0;35m'
case "$1" in
    "")
      rm -f src/grammar/*.java src/grammar/*.tokens
      echo "${PURPLE}Creating grammar java parser and lexer source files into src/ directory"
      antlr4 -o . src/grammar/Wolf.g4
    ;;
    "-nlv" | "-NLV" )
      cd src/grammar/
      rm -f *.java *.tokens
      echo "${PURPLE}Creating grammar java parser and lexer source files into src/ directory"
      antlr4 Wolf.g4 -no-listener -visitor
      cd ../../
    ;;
    *)
        echo "${RED}Error: illegal option $1. Please provide the valid option."
    ;;
esac

#antlr4 Easy.g4 -no-listener -visitor
#javac -cp /usr/local/Cellar/antlr/4.5.2/antlr-4.5.2-complete.jar: *.java
# java -cp /usr/local/Cellar/antlr/4.5.2/antlr-4.5.2-complete.jar: Easy prog.easy
