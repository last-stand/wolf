#!/usr/bin/env bash
GREEN='\033[0;32m'
RED='\033[0;31m'
WHITE='\033[0m'
YELLOW='\033[0;33m'
PURPLE='\033[0;35m'
EOF="${PURPLE}ctrl+z (Windows) ${YELLOW}or ${PURPLE}ctrl+d (Unix based OS)${YELLOW}"
echo "${WHITE}Creating grammar java parser and lexer source files into src/grammar/"
antlr4 -o . src/grammar/Wolf.g4
echo "${GREEN}Done."
echo "${WHITE}Compiling grammar source files."
mkdir -p build/classes/main/grammar
rm -rf build/libs
mkdir -p build/libs
javac -d build/classes/main/grammar src/grammar/Wolf*.java
cd build/libs/
jar cvf wolf-1.0.0.jar ../classes/main/grammar/Wolf*
cd ../../
cd build/classes/main/grammar/
case "$1" in
    "-gui" | "-GUI" | "")
        echo "${YELLOW}Enter data for parsing and press ${EOF} after newline..${WHITE}"
        grun Wolf init -gui
    ;;
    "-token" | "-TOKEN" )
        echo "${YELLOW}Enter data for parsing and press ${EOF} after newline..${WHITE}"
        grun Wolf init -tokens
    ;;
    "-tree" | "-TREE" )
        echo "${YELLOW}Enter data for parsing and press ${EOF} after newline..${WHITE}"
        grun Wolf init -tree
    ;;
    "-nlv" | "-NLV" )
        antlr4 Wolf.g4 -no-listener -visitor
    ;;
    *)
        echo "${RED}Error: illegal option $1. Please provide the valid option."
    ;;
esac
cd ../../../../

#antlr4 Easy.g4 -no-listener -visitor
#javac -cp /usr/local/Cellar/antlr/4.5.2/antlr-4.5.2-complete.jar: *.java
# java -cp /usr/local/Cellar/antlr/4.5.2/antlr-4.5.2-complete.jar: Easy prog.easy
