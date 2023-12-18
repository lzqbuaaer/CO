#include<stdio.h>
char buf[256];
int main(){
	while(gets(buf)){
		if(buf[0]=='@'&&(buf[11]!='$'||buf[12]!=' '||buf[13]!='0')) puts(buf);
	}
	return 0;
}
