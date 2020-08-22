#include <stdio.h>
#define MAXLINE 1000
#define N 3
int getLine(char line[], int maxline);
void insertGaps(char line[], char lineWithOutTabs[], int i, int sizeTabs);
void swapTabsToGaps(char line[], char lineWithOutTabs[], int len);

int main(){
    int len;
    char line[MAXLINE];
    char lineWithOutTabs[MAXLINE];
    while((len = getLine(line, MAXLINE)) > 0){
        swapTabsToGaps(line, lineWithOutTabs, len);
        printf("%s\n", lineWithOutTabs);
    }
}

void swapTabsToGaps(char line[], char lineWithOutTabs[], int len){
    int index = 0;
    for(int i = 0; i < len; i++){
        if(line[i] == '\t'){
            insertGaps(line, lineWithOutTabs, i, index);
            index = index + N;
        }else{
            lineWithOutTabs[index] = line[i];
            index++;
        }
    }
    lineWithOutTabs[index] = '\0';
}

void insertGaps(char line[], char lineWithOutTabs[], int i, int index){
    for(int i = 0; i < N; i++){
        lineWithOutTabs[index] = ' ';
        index++;
    }
}

int getLine(char line[], int maxline){
    char c;
    int i;
    for(i = 0; i < maxline - 1 && ((c = getchar()) != EOF && c != '\n'); i++){
        line[i] = c;
    }
    if(c = '\n'){
        line[i] = c;
        i++;
    }
    line[i] = '\0';
    return i;
}