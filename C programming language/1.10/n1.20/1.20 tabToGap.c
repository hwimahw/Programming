#include <stdio.h>
#define MAXSIZE = 1000

int n = 3;

int getLine(char line[], int maxLen);


int getLine(char line[], int maxLen){
    char c;
    int i;
    for(i = 0; (c = getchar()) != '\n' && i < maxLen - 1; i++){
        line[i] = c;
    }
    if(c == '\n'){
        line[i] = c;
        i++;
    }
    line[i] = '\0';
    return i;
}

int insertGaps(char line[], int quantity, int start){
    for(int i = start; i < quantity; i++){
        line[i] = ' ';
    }
}

main(){
    char line[1000];
    char lineWithoutTabs[1000];
    int len;
    while((len = getLine(line, 1000)) > 0){
        for(int i = 0; i < len; i++){
            if(line[i] == '\t'){
                insertGaps(lineWithoutTabs, n, i);
		i = i + n - 1;
            }else{
                lineWithoutTabs[i] = line[i];
            }
        }
    }
}

