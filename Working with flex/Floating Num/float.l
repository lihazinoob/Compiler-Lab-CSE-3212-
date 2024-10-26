/*Identifying a  floating Number*/

%{
  #include<stdio.h>
%}

%%
[+-]?[0-9]*[.][0-9]* {printf("This is a floating point number");}   

%%

int yywrap()
{
  return 1;
}
int main()
{
  printf("Enter a number: ");
  yylex();
}