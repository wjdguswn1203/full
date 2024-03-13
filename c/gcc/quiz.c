#include <stdio.h>
#include "libcheckeod.h"

void main() {
    
    int x;

    while (1){   
    
    printf("Input numbers: ");
    scanf("%d", &x );
    if(x == 0) {
        printf("프로그램을 종료합니다.\n");
        break;
    }
    checkeod(x);
    }
    
}