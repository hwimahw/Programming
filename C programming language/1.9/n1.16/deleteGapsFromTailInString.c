#include <stdio.h>
#define MAXLINE 1000
#define OUT 0
#define IN 1
int getLine(char line[], int maxline);
int deleteGapsFromEndOfString(char line[], int len);


int main(){
    int len;
    char line[MAXLINE];
    int newLen;
    while((len = getLine(line, MAXLINE)) > 0){
        newLen = deleteGapsFromEndOfString(line, len);
        printf("%s %d\n", line, newLen);

    }
}

int deleteGapsFromEndOfString(char line[], int len){
    int state;
    int indexForNull = len;
    for(int i = 0; i < len; i++){
        if(line[i] != '\t' && line[i] != ' ' && line[i] != '\n'){
            state = OUT;
        }else if(state == OUT){
            indexForNull = i;
            state = IN;
        }
    }
    if(state == IN) {
        line[indexForNull] = '\0';
    }
    return indexForNull;
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