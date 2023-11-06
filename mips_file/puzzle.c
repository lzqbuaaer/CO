#include<stdio.h>
int a[10][10];
int x,y,sx,sy,dx,dy,cnt;
void dfs(int s,int t){
    if(s<0||s>=x||t<0||t>=y) return;
    if(a[s][t]==1) return;
    if(s==dx&&t==dy){
        cnt++;
        return;
    }
    a[s][t]=1;
    dfs(s-1,t);
    dfs(s+1,t);
    dfs(s,t-1);
    dfs(s,t+1);
    a[s][t]=0;
}
int main(){
    scanf("%d%d",&x,&y);
    for(int i=0;i<x;i++){
        for(int j=0;j<y;j++){
            scanf("%d",&a[i][j]);
        }
    }
    scanf("%d%d%d%d",&sx,&sy,&dx,&dy);
    sx--;
    sy--;
    dx--;
    dy--;
    dfs(sx,sy);
    printf("%d",cnt);
}