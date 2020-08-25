#include <stdio.h>
#define MAXLINE 1000

int getLine(char s[], int lim);
void copy(char to[], char from[]);

int getLine(char s[], int lim){
    char c;
    int i;
    for(i = 0; i < lim - 1 && (c = getchar()) != EOF && c != '\n'; i++){
        s[i] = c;
    }
    if(c == '\n'){
        s[i] = c;
        i++;
    }
    s[i] = '\0';
    return i;
}

void copy(char to[], char from[]){
    int i;
    i = 0;
    while((to[i] = from[i]) != '\0'){
        i++;
    }
}

void main(){
    int len;
    int max;
    char line[MAXLINE];
    char longest[MAXLINE];
    while((len = getLine(line, MAXLINE)) > 0){
        if(len > max){
            max = len;
            copy(longest, line);
        }
        printf("%s", longest);
    }
    if(max > 0){
        printf("%s", longest);
    }
}