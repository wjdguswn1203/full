#include <stdio.h>
#include "libcheckprime.h"

int main() {

    int x;
    while(1){

        printf("input integer (0:Exit) => \n");
        scanf("%d", &x);

        if(x == 0) {
            printf("Exit program~!!\n");
            break;
        }
        else{
        if( checkprime(x) == x ) {
            printf("%d is a prime number\n", x);
        }
        
        else {
            printf("%d is not a prime number\n", x);
        }
        }
    }



    return 0;
}