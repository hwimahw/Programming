#include <stdio.h>
#define MAXLINE 1000
#define OUT 0
#define IN 1
int getLine(char line[], int maxline);
int changeGapsToOneGap(char line[], int len, char newLine[]);


int main(){
    int len;
    char line[MAXLINE];
    int newLen;
    char newLine[1000];
    while((len = getLine(line, MAXLINE)) > 0){
        newLen = changeGapsToOneGap(line, len, newLine);
        printf("%s", line);
        printf("%s", newLine);
    }
}

int changeGapsToOneGap(char line[], int len, char newLine[]){
    int in = 1;
    int out = 0;
    int state = out;
    int index = 0;
    for(int i = 0; i < len; i++){
        if(line[i] == ' '){
            state = in;
        }else if(line[i] != ' ' && state == in){
            newLine[index] = ' ';
            index++;
            newLine[index] = line[i];
            index++;
            state = out;
        }else if(line[i] != ' ' && state == out){
            newLine[index] = line[i];
            index++;
        }
    }
    newLine[index] = '\0';
    return --index;
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