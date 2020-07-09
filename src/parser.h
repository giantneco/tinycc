#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <iostream>
#include <map>

extern int yyerror( const char* ) ;
extern int yyparse( void ) ;
extern int yylex( void ) ;
extern char* yytext ;
extern FILE* yyin ;
