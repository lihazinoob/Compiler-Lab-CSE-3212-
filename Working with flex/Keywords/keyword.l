/*This is a flex program to identify a keyword in C language*/

%{
  #include<stdio.h>
%}

%%
if          {printf("%s is a keyword in C language\n", yytext);}
else        {printf("%s is a keyword in C language\n", yytext);}
"else if"   {printf("%s is a keyword in C language\n", yytext);}
for         {printf("%s is a keyword in C language\n", yytext);}
while       {printf("%s is a keyword in C language\n", yytext);}
switch      {printf("%s is a keyword in C language\n", yytext);}

[a-zA-Z]+       {printf("%s is not a keyword in C language\n", yytext);} 
%%
int main()
{
  printf("Enter a sentence: ");
  yylex();
}
int yywrap()
{
  return 1;
}