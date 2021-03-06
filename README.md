#Wolf <img src="https://github.com/last-stand/wolf/blob/master/eyes.png" width="150" height="100" />
##Description
_Wolf_ is my simple programming language which is created using [ANTLR](http://www.antlr.org/) parser generator. For more information about ANTLR, visit [ANTLR Wikipedia](https://en.wikipedia.org/wiki/ANTLR). This is a effort of learning and knowing more about how languages are made by creating a simple programming language.

## Input File
I am using [Gradle ANTLR Plugin](https://docs.gradle.org/current/userguide/antlr_plugin.html) for build. Here we have given input file which is `example.wlf` in gradle.build task.

## Building Parser
* To build and  compile our class with our generated parser, run <br />
  `sh run.sh -b`

## Running Parser and getting parsed data
**Get parsed data from file input**
* To visualize the AST in gui, run <br />
  `sh run.sh -gui` **OR** `sh run.sh -gui filename`
* To visualize AST as tokens, run <br />
  `sh run.sh -tokens` **OR** `sh run.sh -tokens filename`
* To visualize AST as tree, run <br />
  `sh run.sh -tree` **OR** `sh run.sh -tree filename`

### Note:
  In above running options `filename` is optional. By default above commands will take `example.wlf` sample file as input.

**Giving input from console**
* To visualize the AST in gui, run <br />
  `sh run.sh -guic`
* To visualize AST as tokens, run <br />
  `sh run.sh -tokensc`
* To visualize AST as tree, run <br />
  `sh run.sh -treec`

### Note:
After running any of the above script. It will ask for input on console. For example:<br />
```bash
$ sh run.sh -tokensc
Enter input string to parse and press ctrl+z (Windows) or ctrl+d (Unix based OS):
12-2*(5/10)-1**2
```
Now press **ctrl+d** or **ctrl+z** to see the output after giving input.<br />
```bash
[@0,0:1='12',<10>,1:0]
[@1,2:2='-',<7>,1:2]
...................
...................
[@14,17:16='<EOF>',<-1>,2:0]
```
**By default `sh run.sh` without any option runs in `-guic` mode. Means, it will take input from console and give AST in gui.**

## Building language using Parser generated by ANTLR:
* We are using our generated parser in `Wolf.java` class. We are using `EvalVisitor.java` class to extend `WolfBaseVisitor<Integer>` class. To implement the calculator, we override the methods associated with statement and expression alternatives. To run all compiled classes along with our generated parser, run <br />

```bash
$ sh run.sh -a
## Running...
Enter data and press ctrl+d(Unix based OS) or ctrl+z(Windows) to see the output:
a=4
b=10
c=a+b
b=a
c
b

Output:
14
4
```
**OR**<br />
Now pass input from a file. Here it is `example.wlf` and this is the content in it:
```bash
193
a=5
b=6
a+b*2
(1+2)*3
```
Now run it.
```bash
$ sh run.sh -a example.wlf
## Running...
193
17
9
```
