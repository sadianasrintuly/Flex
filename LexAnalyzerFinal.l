%option noyywrap
%{
		#include<iostream>
		#include<fstream>
		using namespace std;
		int lineNo=1,c=0;
		int sizeOfArray;
		int size;

		FILE *input;
		ofstream log;
		ofstream token;

		struct Node
		{
		    string in;
		    string type;
		    struct Node *next;
		};

		    string choice;
		    struct Node *head,*h1,*s;
		  
		void display()
		{
		    if(choice[0]-'0'==2)
			{
			    if(c==0)
			    {
				cout<<"No values in the list"<<endl;
			    }
			    else
			    {
				head=s;
				while(head->next!=NULL)
				{
				    cout<<head->in<<"  "<<head->type<<endl;
				    head=head->next;
				}
			    }
			}
		}

		void insert(string c,string size)
		{
		    int p;
	    	    p=c.size();
		    while(1)
		    {
		    if(p<::size)
			    {
				struct Node *neww=new struct Node;
				cout<<"Please insert space separated symbol"<<endl;
				cin>>h1->in;
				cout<<"Please insert it's type"<<endl;
				cin>>h1->type;
				cout<<"Value inserted"<<endl;
				h1->next=neww;
				h1=neww;
				p++;
			    }
		    }
		}
		
		void t()
		{
		    int i;
		    h1=new struct Node;
		    head=new struct  Node;
		    s=new struct  Node;
		    cout<<"Enter the size of the linked list :";
		    cin>>size;
		    head=h1;
		    s=h1;
		    while(1)
		    {
			cout<<"Press 1 for Insert"<<endl;
			cout<<"Press 2 for Display"<<endl;
			cout<<"Press 3 for exit"<<endl;
			cin>>choice;
			if(choice.size()>1) 
			cout<<"Wrong input\n";
			else if(choice[0]-'0'==1)
			{
			    if(c<size)
			    {
			      insert("text","text");
			    }

			    else
			    {
				cout<<"Sorry not enough space"<<endl;
			    }
			}
			else if(choice[0]-'0'==2)
			{
			void display();
			}
			else if(choice[0]-'0'==3)
			{
			    exit(0);
			}
		    }
		}
%}

KEYWORD "if"|"program"|"else"|"procedure"|"array"|"integer"|"then"|"write"|"not"|"do"|"real"|"end"|"while"|"var"|"begin"|"function"|"of"
DIGIT [0-9]
UNDERSCORE _
ALPHA [a-zA-Z]
ID ({ALPHA}|{UNDERSCORE})({ALPHA}|{UNDERSCORE}|{DIGIT})*
COMMA ,
SEMICOLON ;
COLON :
DOT "."
DIGITS DIGIT+
NUM (DIGITS(.DIGITS)?(E[+-]?DIGITS)?)
RELOP <|>|<=|>=|=|<>
MULOP "*"|"/"|"div"|"mod"|"and"
ADDOP "+"|"-"|"or"
ASSIGNOP :=
BRACKET [|]
PAREN "("|")"
DOTDOT ".."

%%
{KEYWORD}  {
    cout<<"Line <"<<lineNo<<"> : <KEYWORD, "<<string(yytext)<<"> is found"<<endl;
    token<<"<KEYWORD, " + string(yytext) + ">"<<endl;
    log<< " Line < "<<lineNo<<"> : <KEYWORD, "<<string(yytext)<<"> is found"<<endl;
    cout<<"\n";
}

{ID}  {
    cout<<"Line <"<<lineNo<<"> : <ID, "<<string(yytext)<<"> is found"<<endl;
    token<<"<ID, " + string(yytext) + ">"<<endl;
    log<< " Line < "<<lineNo<<"> : <ID, "<<string(yytext)<<"> is found"<<endl;
    cout<<"\n";
}

{NUM}                 {
                       cout<<"Line <"<<lineNo<<"> : <NUM, "<<string(yytext)<<"> is found"<<endl;
    token<<"<NUM, " + string(yytext) + ">"<<endl;
    log<<"Line <"<<lineNo<<"> : <NUM, "<<string(yytext)<<"> is found"<<endl;
    cout<<"\n";
}



{RELOP} {
    cout<<"Line <"<<lineNo<<"> : <RELOP, "<<string(yytext)<<"> is found"<<endl;
    token<<"<RELOP, " + string(yytext) + ">"<<endl;
    log<<"Line <"<<lineNo<<"> : <RELOP, "<<string(yytext)<<"> is found"<<endl;
    cout<<"\n";
}


{ADDOP} {
    cout<<"Line <"<<lineNo<<"> : <ADDOP, "<<string(yytext)<<"> is found"<<endl;
    token<<"<ADDOP, " + string(yytext) + ">"<<endl;
    log<<"Line <"<<lineNo<<"> : <ADDOP, "<<string(yytext)<<"> is found"<<endl;
    cout<<"\n";
}


{MULOP} {
    cout<<"Line <"<<lineNo<<"> : <MULOP, "<<string(yytext)<<"> is found"<<endl;
    token<<"<MULOP, " + string(yytext) + ">"<<endl;
    log<<"Line <"<<lineNo<<"> : <MULOP, "<<string(yytext)<<"> is found"<<endl;
    cout<<"\n";
}


{ASSIGNOP} {
    cout<<"Line <"<<lineNo<<"> : <ASSIGNOP, "<<string(yytext)<<"> is found"<<endl;
    token<<"<ASSIGNOP, " + string(yytext) + ">"<<endl;
    log<<"Line <"<<lineNo<<"> : <ASSIGNOP "<<string(yytext)<<"> is found"<<endl;
    cout<<"\n";
}


{BRACKET} {
    cout<<"Line <"<<lineNo<<"> : <BRACKET, "<<string(yytext)<<"> is found"<<endl;
    token<<"<BRACKET, " + string(yytext) + ">"<<endl;
    log<<"Line <"<<lineNo<<"> : <BRACKET, "<<string(yytext)<<"> is found"<<endl;
    cout<<"\n";
}


{PAREN} {
    cout<<"Line <"<<lineNo<<"> : <PAREN, "<<string(yytext)<<"> is found"<<endl;
    token<<"<PAREN, " + string(yytext) + ">"<<endl;
    log<<"Line <"<<lineNo<<"> : <PAREN, "<<string(yytext)<<"> is found"<<endl;
    cout<<"\n";
}


{DOTDOT} {
    cout<<"Line <"<<lineNo<<"> : <DOTDOT, "<<string(yytext)<<"> is found"<<endl;
    token<<"<DOTDOT, " + string(yytext) + ">"<<endl;
    log<<"Line <"<<lineNo<<"> : <DOTDOT, "<<string(yytext)<<"> is found"<<endl;
    cout<<"\n";
}


{COMMA} {
    cout<<"Line <"<<lineNo<<"> : <COMMA, "<<string(yytext)<<"> is found"<<endl;
    token<<"<COMMA, " + string(yytext) + ">"<<endl;
    log<<"Line <"<<lineNo<<"> : <COMMA, "<<string(yytext)<<"> is found"<<endl;
    cout<<"\n";
}


{SEMICOLON} {
    cout<<"Line <"<<lineNo<<"> : <SEMICOLON, "<<string(yytext)<<"> is found"<<endl;
    token<<"<SEMICOLON, " + string(yytext) + ">"<<endl;
    log<<"Line <"<<lineNo<<"> : <SEMICOLON, "<<string(yytext)<<"> is found"<<endl;
    cout<<"\n";
}


{COLON} {
    cout<<"Line <"<<lineNo<<"> : <COLON, "<<string(yytext)<<"> is found"<<endl;
    token<<"<COLON, " + string(yytext) + ">"<<endl;
    log<<"Line <"<<lineNo<<"> : <COLON, "<<string(yytext)<<"> is found"<<endl;
    cout<<"\n";
}


{DOT} {
    cout<<"Line <"<<lineNo<<"> : <DOT, "<<string(yytext)<<"> is found"<<endl;
    token<<"<DOT, " + string(yytext) + ">"<<endl;
    log<<"Line <"<<lineNo<<"> : <DOT, "<<string(yytext)<<"> is found"<<endl;
    cout<<"\n";
}
%%

int main(int argc, char **argv)
{
    input = fopen (argv[1], "r");
    log.open (argv[2]);
    token.open(argv[3]);

    yyin=input;
    yylex();
    t();
    return 0;
}
