%{
#include<stdio.h>
#include<string.h>
#include"SymbolTable.h"

int lineCount = 1;
int errorCount = 0;

int yyparse(void);
int yylex(void);

void yyerror(const char* str) {
    printf("Syntax error at line: %d : \"%s\" \n", lineCount, str);
}
    
%}

%union {
    SymbolInfo *symbolInfo;
}


%token VOID NEWLINE NUMBER LESS GREATER EQUAL IF FOR ELSE WHILE BREAK CONTINUE CASE DEFAULT SWITCH DO
%token INCOP DECOP ASSIGNOP ADDOP MULOP RELOP BITOP LOGICOP LOGICNOT NOT LPAREN RPAREN LCURL RCURL LTHIRD RTHIRD
%token COMMA SEMICOLON 
%token INT FLOAT DOUBLE CHAR 
%token PLUS MINUS SLASH ASTERISK

%token<symbolInfo>ID
%token<symbolInfo>CONST_CHAR
%token<symbolInfo>CONST_INT
%token<symbolInfo>CONST_FLOAT

%type <symbolInfo> start



%%


start:
     {
    
     
    printf("hello");
        }
    ;

%%

int main(){
    yyparse();
    return 0;
}