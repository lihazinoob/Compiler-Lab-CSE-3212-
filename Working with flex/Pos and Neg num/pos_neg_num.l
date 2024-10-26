/*Lex Program to recognize positive and negative numbers*/


/*Definition section*/
%{
  #include<stdio.h>
%}
/*Defintion Section Closes*/
/*Rule Section Starts*/

%%
[+]?[0-9]+ {printf("this is a positive number/n");}
[-]?[0-9]+ {printf("this is a negative number/n");}  
%%

int yywrap()
{
  return 1;
}
int main()
{
  printf("Enter any number you want: ");
  yylex();
}