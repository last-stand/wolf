#Wolf <img src="https://github.com/last-stand/wolf/blob/master/eyes.png" width="150" height="100" />
##Description
_Wolf_ is my simple programming language which is created using [ANTLR](http://www.antlr.org/) parser generator. For more information about ANTLR, visit [ANTLR Wikipedia](https://en.wikipedia.org/wiki/ANTLR). This is a effort of learning and knowing more about how languages are made by creating a simple programming language.

## Input File
I am using [Gradle ANTLR Plugin](https://docs.gradle.org/current/userguide/antlr_plugin.html) for build. Here we have given input file which is `src/main/Wolf/first.wlf` in gradle.build task.

## Building Parser
* To build and  compile our class with our generated parser, run <br />
  `gradle clean compile`

## Running Parser
**Using gradle**
* To run all compiled classes along with our generated parser, run <br />
  `gradle grun`
* To visualize the AST in gui, run <br />
  `gradle grunGui`
* To visualize tokens, run <br />
  `gradle grunToken`
* To visualize AST in console, run <br />
  `gradle grunTree`
<br /><br/>
**Using shell script**<br />
  Run `run.sh` script after building parser. You can pass input file as parameter otherwise it will ask for input on console.<br />
  `sh run.sh src/main/Wolf/first.wlf`
  <br />
  *OR*
  `sh run.sh`<br />
  `Enter input string to parse:`<br />
  `{12, 89, {34, 7}, {1, 5, 7}, 6}`

### Note:
>  By default above gradle commands will take `src/main/Wolf/first.wlf` sample file as input. We can change it by changing the args in build.gradle,
  <br />
  `task run(type:JavaExec){
    ........
    args = ["src/main/Wolf/first.wlf"]
  }`
>
>  *OR*
  <br />
  While asking for input, provide input string or filename with path to parse. If you want to skip press return/enter⏎.<br />
  `gradle grun -no-daemon`
  <br />
  It will ask for input on `compile` task as well, press return/enter⏎ to skip input.
