#Wolf <img src="https://github.com/last-stand/wolf/blob/master/eyes.png" width="150" height="100" />
##Description
_Wolf_ is my simple programming language which is created using [ANTLR](http://www.antlr.org/) parser generator. For more information about ANTLR you can visit [ANTLR Wikipedia](https://en.wikipedia.org/wiki/ANTLR). This is a effort of learning and knowing more about how languages are made by creating a simple programming language.

## Input File
I am using [Gradle ANTLR Plugin](https://docs.gradle.org/current/userguide/antlr_plugin.html) for build. Here we have given input file which is `src/main/Wolf/first.wlf` in gradle.build task.

##Running Parser
1. To visualize the AST in gui, run
  `gradle grunGui`
2. To visualize tokens, run
  `gradle grunToken`
3. To visualize AST in console, run
  `gradle grunTree`
