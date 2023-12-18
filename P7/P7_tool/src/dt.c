#include<stdio.h>
char buf[4096];
int main(){
	while(gets(buf)){
		for(char *p=buf;*p;p++){
			if(*p=='@'){
				puts(p);
				break;
			}
		}
	}
	return 0;
}
