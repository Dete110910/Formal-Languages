rm ex7.tab.* lex.yy.c if.exe

bison -d ex7.y
flex ex7.l
gcc ex7.tab.c lex.yy.c -lfl -o if.exe

clear

./if.exe
