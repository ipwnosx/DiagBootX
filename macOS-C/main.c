#include <stdio.h>
#include <stdlib.h>
void stf(int debug);
int debug = 0;
int main() {
    printf("----------\nWelcome To DiagBootX - DuffyAPP-IT\n----------\n");
    printf("Please Choose An Option:\n"
           "1\tBoot\n"
           "2\tQuick Boot\n"
           "3\tSet Up Serial Only\n"
           "4\tHelp\n"
           );
    char buff[4];
    fgets(buff,4,stdin);
    int opt = atoi(buff);
    printf("%d", opt);
    switch(opt){
        case 1:
            stf(debug);
            break;
        case 2:
            printf("Loading Quick Boot");
            stf(debug);
            break;
        case 3:
            printf("Loading Setup Serial");
            printf("Function not complete");
            break;
        case 4:
            printf("Help isn't ready yet :-(");
            break;
    }
    return 0;
}