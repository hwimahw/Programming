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

int workWithLineWithTabul(char line[], char lineWithTabul[], int quantityOfGaps){
    int a = quantityOfGaps / n;
    int b = quantityOfGaps % n;
    int i;
    int j;
    for(i = 0; i < a; i++){
        lineWithTabul[i] = '\t';
    }
    for(j = 0; j < b; j++){
        lineWithTabul[i] = ' ';
        i++;
    }
    lineWithTabul[i] = '\0';

}


int main(){
    char line[1000];
    char lineWithTabul[1000];
    int len;
    int quantityOfGaps = 0;
    int flag = 1;
    while((len = getLine(line, 1000)) > 0){
        for(int i = 0; i < len; i++){
            if(line[i] != ' ' && line[i] != '\n'){
                flag = 0;
            }
            if(line[i] == ' '){
                quantityOfGaps++;
            }
        }
        if(flag == 1){
            workWithLineWithTabul(line, lineWithTabul, quantityOfGaps);
            printf("%s\n", lineWithTabul);
        }
        quantityOfGaps = 0;
    }
}
