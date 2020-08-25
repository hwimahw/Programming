#include <stdio.h>
#define MAXSIZE = 1000

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

int reverse(char line[], int length, char reverse[]){
    int i;
    int j;
    for(i = length - 2, j = 0; i >= 0; i--, j++){ // (i = length - 2) для того, чтобы не выводился символ '\n'
        reverse[j] = line[i];
    }
    reverse[j] = '\0';
    return length;
}

main(){
    int len;
    char line[1000];
    char reverseArray[1000];
    while((len = getLine(line, 1000)) > 0){
        int size = reverse(line, len, reverseArray);
        printf("%s", line);
        printf("%d\n", len);
        printf("%s\n", reverseArray);
        printf("%d\n", size );
    }
}


