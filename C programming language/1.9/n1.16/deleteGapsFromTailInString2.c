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


int deleteGapsFromTail(char line[], int length, char lineWithoutGapsAtEnd[]){
    char gaps[1000];
    int sizeGaps = 0;
    int state = 0;
    int size = 0;
    for(int i = 0; i < length; i++){
        if(line[i] == ' ' || line[i] == '\t'){
            state = 1;
            gaps[sizeGaps] = line[i];
            sizeGaps++;
        }else if(line[i] != '\n'){
            if(state == 0){
                lineWithoutGapsAtEnd[size] = line[i];
                size++;
            }
            if(state == 1){
                for(int j = 0; j < sizeGaps; j++){
                    lineWithoutGapsAtEnd[size] = gaps[j];
                    size++;
                }
                lineWithoutGapsAtEnd[size] = line[i];
                size++;
                state = 0;
            }
        }
    }
    lineWithoutGapsAtEnd[size] = '\0';
    return size;
}

main(){
    int len;
    char line[1000];
    char lineWithOutGapsAtEnd[1000];
    while((len = getLine(line, 1000)) > 0){
        int size = deleteGapsFromTail(line, len, lineWithOutGapsAtEnd);
        printf("%s", line);
        printf("%d\n", len);
        printf("%s\n", lineWithOutGapsAtEnd);
        printf("%d\n", size );
    }

}


