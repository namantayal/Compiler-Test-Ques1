/*Definition Section*/ 
%{ 
%}

/*Starting character sequence for multiline comment*/ 
start \/\* 
/*Ending character sequence for multiline comment*/ 
end  \*\/ 
  
%%   
\/\/(.*) ;  
{start}.*{end} ;   
%% 
  
int yywrap(void){} 

int main(int k,char **argcv) 
{ 
yyin=fopen("input.c","r"); 
yyout=fopen("out.c","w"); 
yylex(); 
return 0; 
} 