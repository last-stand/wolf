#!/usr/bin/env bash
cd /usr/local/lib
brew install antlr
#OR
#sudo curl -O http://www.antlr.org/download/antlr-4.5.3-complete.jar

export CLASSPATH=".:/usr/local/Cellar/antlr/4.5.2/antlr-4.5.2-complete.jar:$CLASSPATH"
#OR
#export CLASSPATH=".:/usr/local/lib/antlr-4.5.3-complete.jar:$CLASSPATH"

alias antlr4='java -jar /usr/local/Cellar/antlr/4.5.2/antlr-4.5.2-complete.jar'
#OR
#alias antlr4='java -jar /usr/local/lib/antlr-4.5.3-complete.jar'
alias grun='java org.antlr.v4.gui.TestRig'
