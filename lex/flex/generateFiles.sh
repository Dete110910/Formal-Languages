#!/bin/bash

flex $1 
gcc lex.yy.c -lfl -o "$1.exe"

