#include<stdio.h>
int sum=((0x4180-0x3000)>>2)-3;
char buf[16];
FILE *rfp;
int main(int num,char **argv){
	if(num!=3) return 1;
	rfp=fopen(argv[1],"r");
	if(!rfp) return 1;
	while(fgets(buf,16,rfp)) sum--,fputs(buf,stdout);
	fclose(rfp);
	if(sum<0) return 1;
	puts("40806000\n1000ffff\n00000000");
	while(sum) sum--,puts("00000000");
	rfp=fopen(argv[2],"r");
	if(!rfp) return 1;
	while(fgets(buf,16,rfp)) fputs(buf,stdout);
	fclose(rfp);
	return 0;
}
