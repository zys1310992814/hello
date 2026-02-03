#include <stdio.h>
#include "hello.h"

int main(int argc, char *argv[])
{
    printf("\n");
    printf("Hello World!\n");
    printf("Hello GitHub Actions CI/CD!\n");
    printf("\n");
    
    // 显示编译信息
    #ifdef __DATE__
    printf("编译时间: %s\n", __DATE__);
    #endif
    
    #ifdef __TIME__
    printf("编译时间: %s\n", __TIME__);
    #endif
    
    return 0;
}

