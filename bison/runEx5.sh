rm ex5.tab.* lex.yy.c calc.exe

bison -d ex5.y
flex ex5.l
gcc ex5.tab.c lex.yy.c -lfl -o calc.exe

clear

./calc.exe
