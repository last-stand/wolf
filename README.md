#Wolf <img src="https://github.com/last-stand/wolf/blob/master/eyes.png" width="150" height="100" />
##Description
_Wolf_ is my simple programming language which is created using [ANTLR](http://www.antlr.org/) parser generator. For more information about ANTLR, visit [ANTLR Wikipedia](https://en.wikipedia.org/wiki/ANTLR). This is a effort of learning and knowing more about how languages are made by creating a simple programming language.

## Input File
I am using [Gradle ANTLR Plugin](https://docs.gradle.org/current/userguide/antlr_plugin.html) for build. Here we have given input file which is `src/main/Wolf/first.wlf` in gradle.build task.

## Building Parser
* To build and  compile our class with our generated parser, run <br />
  `sh run.sh -b`

## Running Parser
**Using file as input**
1. To visualize the AST in gui, run <br />
  `sh run.sh -gui` **OR** `sh run.sh -gui filename`
2. To visualize AST as tokens, run <br />
  `sh run.sh -tokens` **OR** `sh run.sh -tokens filename`
3. To visualize AST as tree, run <br />
  `sh run.sh -tree` **OR** `sh run.sh -tree filename`
### Note:
  In above running options `filename` is optional. By default above commands will take `src/main/Wolf/first.wlf` sample file as input.

**Giving input from console**
1. To visualize the AST in gui, run <br />
  `sh run.sh -guic`
2. To visualize AST as tokens, run <br />
  `sh run.sh -tokensc`
3. To visualize AST as tree, run <br />
  `sh run.sh -treec`
### Note:
After running any of the above script. It will ask for input on console. For example:<br />
`sh run.sh -tokensc`
`Enter input string to parse and press ctrl+z (Windows) or ctrl+d (Unix based OS):`<br />
`12-2*(5/10)-1**2`<br />
Now press **ctrl+d** or **ctrl+z** to see the output after giving input.<br />
`[@0,0:1='12',<10>,1:0]`<br />
`[@1,2:2='-',<7>,1:2]`<br />
`...................`<br />
`...................`<br />
`[@14,17:16='<EOF>',<-1>,2:0]`<br />
**By default `sh run.sh` without any option runs in `-guic` mode. Means, it will take input from console and give AST in gui.**

## Using Parser generated by ANTLR:
* We are using our generated parser in `Wolf.java` class. To run all compiled classes along with our generated parser, run <br />
`sh run.sh -a`<br />
`Enter input string to parse:`<br />
`1+2+3`<br />
`(prog (stat (expr (expr (expr 1) + (expr 2)) + (expr 3)) \n))`<br />
**OR**
`sh run.sh -a src/main/Wolf/last.wlf`<br />
`## Running...`<br />
`(prog (stat (expr (expr ( (expr (expr (expr (expr 100) / (expr 50)) + (expr 3)) ** (expr 2)) )) - (expr (expr 8) / (expr 4))) \n) (stat (expr (expr (expr (expr 13) + (expr 22)) - (expr (expr 8) * (expr 9))) ** (expr 2)) \n))`
