#include <stdio.h>

int checkeod(int x) {

    if(x != 0 & x%2 == 1) {
        printf("%d는  홀수이다.\n", x);
    }
    else {
        printf("%d는  짝수이다.\n", x);
    }

}