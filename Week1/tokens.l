%{
int tokencount = 0;
%}

%%
[ ]+ {printf("White spaces ignored\n");}
\\\\.*.[\n]? {printf("%s is a comment\n",yytext);}
[a-zA-Z]+ {printf("%s is a token\n",yytext);tokencount++;}
[a-zA-Z]+ {printf("%s is a token\n",yytext);tokencount++;}
[a-zA-Z]+ {printf("%s is a token\n",yytext);tokencount++;}

%%
int yywrap()
{
return 1;
}
int main(){
	yylex();
	printf("Number of tokens is : %d\n",tokencount);
}