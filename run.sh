#!/usr/bin/env bash

RED='\033[0;31m'
GREEN='\033[0;32m'
WHITE='\033[0;37m'
YELLOW='\033[0;33m'
PURPLE='\033[0;35m'
ANTLR='/usr/local/Cellar/antlr/4.5.2/antlr-4.5.2-complete.jar'
OPTION=$1

takeConsoleInput () {
  cd build/classes/main
  echo "${PURPLE}>Enter input string to parse and press ctrl+z (Windows) or ctrl+d (Unix based OS):${WHITE}"
  grun Wolf prog ${OPTION%?} #remove last character 'c'
  cd ../../..
}

showError () {
  echo "${RED}Error: Directory build/classes/main does not exists."
  echo "Please run ${YELLOW}sh run.sh -b${RED} to build."
}

case ${OPTION} in
  "-b")
       echo "${GREEN}## Building whole source...${WHITE}"
       gradle clean compile
  ;;
  "")
    if [ -d "build/classes/main" ]
    then
        OPTION="-guic"
        takeConsoleInput
    else
        showError
    fi
  ;;
  "-a")
     if [ -d "build/classes/main" ]
     then
         echo "${GREEN}## Running...${WHITE}"
         if [ $2 ]
         then
             java -cp ${ANTLR}:build/classes/main Wolf $2
         else
             java -cp ${ANTLR}:build/classes/main Wolf
         fi
     else
       showError
     fi
  ;;
  "-gui" | "-guic")
     if [ -d "build/classes/main" ]
     then
         if [ ${OPTION} == "-guic" ]
         then
            takeConsoleInput
         else
             echo "${GREEN}## Running...${WHITE}"
             if [ $2 ]
             then
                gradle -s grun -Pwolfargs=-gui,$2
             else
                gradle -s grun -Pwolfargs=-gui
             fi
         fi
     else
         showError
     fi
  ;;
  "-tree" | "-treec")
     if [ -d "build/classes/main" ]
     then
          if [ ${OPTION} == "-treec" ]
          then
              takeConsoleInput
          else
               echo "${GREEN}## Running...${WHITE}"
               if [ $2 ]
               then
                  gradle -s grun -Pwolfargs=-tree,$2
               else
                  gradle -s grun -Pwolfargs=-tree
               fi
          fi
     else
         showError
     fi
  ;;
  "-tokens" | "-tokensc")
      if [ -d "build/classes/main" ]
      then
          if [ ${OPTION} == "-tokensc" ]
          then
              takeConsoleInput
          else
              echo "${GREEN}## Running...${WHITE}"
              if [ $2 ]
              then
                 gradle -s grun -Pwolfargs=-tokens,$2
              else
                 gradle -s grun -Pwolfargs=-tokens
              fi
          fi
      else
          showError
      fi
  ;;
  *)
    echo "${RED}## Wrong option ${OPTION}"
  ;;
esac

# antlr4 Wolf.g4 -no-listener -visitor
# javac -cp /usr/local/Cellar/antlr/4.5.2/antlr-4.5.2-complete.jar: *.java
# javac -cp /usr/local/Cellar/antlr/4.5.2/antlr-4.5.2-complete.jar:build/classes/main src/main/*.java
