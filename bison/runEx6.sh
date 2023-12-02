rm ex6.tab.* lex.yy.c calc.exe

bison -d ex6.y
flex ex6.l
gcc ex6.tab.c lex.yy.c -lfl -o calc.exe

clear

./calc.exe
