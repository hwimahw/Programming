#include <stdio.h>

#define IN 1
#define OUT 2

int main(int argc, char** argv){
    int c, state, qS, qW, qStr;
    qS = qW = qStr = 0;
    state = OUT;
    while((c = getchar()) != EOF){
        qS++;
        if(c == '\n'){
            qStr++;
        }
        if(c == ' ' || c == '\t' || c =='\n'){
            state = OUT;
        }
        else if (state == OUT){
            state = IN;
            qW++;
        }
    }
}