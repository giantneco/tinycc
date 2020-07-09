%{
#define YY_SKIP_YYWRAP
#include "parser.h"
#include "y.tab.h"
%}

delim	[ \t]
ws  	{delim}+
letter	[A-Za-z]
digit	[0-9]
ident	{letter}({letter}|{digit})*
number	{digit}+(\.{digit}+)?(E[+\-]?{digit}+)?
%%

%union {
  struct number* str;
}

[0-9]+ {
  yylval.str = new struct number;
  yylval.str->type = T_INT;
  yylval.str->val = atof(yytext);
  return NUMBER;
}
