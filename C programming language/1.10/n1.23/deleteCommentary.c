#include <stdio.h>
#define N 10000
int main(){
    FILE* fileInput;
    FILE* fileOutput;
    char oldLine[N];
    char newLine[N];
    fileInput = fopen("input.txt", "r");
    fileOutput = fopen("output.txt","w");
    int state = 0;
    int i = 0;
    while(fgets(oldLine, N, fileInput) != NULL){
        for(i = 0; i < N - 2; i++){
            if(state == 1 && oldLine[i] == '*' && oldLine[i + 1] == '/'){
                state = 0;
                newLine[i] = ' ';
                newLine[i + 1] = ' ';
                i = i + 1;
                continue;
            }
            if(oldLine[i] == '/' && oldLine[i + 1] == '/' && state == 0){
                break;
            }
            else if(oldLine[i] == '/' && oldLine[i + 1] == '*' && state == 0){
                state = 1;
                newLine[i] = ' ';
                newLine[i + 1] = ' ';
                i = i + 1;
                continue;
            }
            else if(state == 0){
                newLine[i] = oldLine[i];
            }
            else if(state == 1){
                newLine[i] = ' ';
            }
        }
        newLine[i] = '\n';
        newLine[i + 1] = '\0';
        fputs(newLine, fileOutput);
    }
}