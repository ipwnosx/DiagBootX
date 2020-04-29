//
// Created by James Duffy on 02/02/2020. >/dev/null 2>&1
//
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
void stf(int debug){
    if (debug == 1) {
        printf("Debugging Active\n");
        system("echo 'Entering PWNED-DFU Mode'");
        system("./ipwndfu -p");
        sleep(5);
        system("./ipwndfu --patch");
        system("echo 'Patching Bootchain'");
        sleep(10);
        system("echo 'Sending iBSS'");
        system("./irecovery -f ibss.img4");
        sleep(3);
        printf("Sending iBEC");
        system("./irecovery -f ibec.img4");
        printf("Lightning");
        sleep(15);
        system("printf '/send diag.img4\ngo\n/exit\n' | ./irecovery -s");
        //    system("./irecovery -f diag.img4");
        //    sleep(4);
        //    system("./irecovery -c 'go'");
    }
    if (debug == 0) {
        printf("Debugging Active\n");
        system("echo 'Entering PWNED-DFU'");
        system("./ipwndfu -p >/dev/null 2>&1");
        sleep(5);
        system("./ipwndfu --patch >/dev/null 2>&1");
        system("echo 'Patching Bootchain'");
        sleep(10);
        system("echo 'Sending iBSS'");
        system("./irecovery -f ibss.img4 >/dev/null 2>&1");
        sleep(3);
        system("echo 'Sending iBEC'");
        system("./irecovery -f ibec.img4 >/dev/null 2>&1");
        system("echo 'Remove Lightning'");
        sleep(3);
        system("echo 'You have...'");
        system("echo '5 seconds to reconnect'");
        sleep(1);
        system("echo '4 seconds to reconnect'");
        sleep(1);
        system("echo '3 seconds to reconnect'");
        sleep(1);
        system("echo '2 seconds to reconnect'");
        sleep(1);
        system("echo '1 seconds to reconnect'");
        sleep(3);
        system("echo 'Diags Launching'");
        system("printf '/send diag.img4\ngo\n/exit\n' | ./irecovery -s >/dev/null 2>&1");
        //    system("./irecovery -f diag.img4");
        //    sleep(4);
        //    system("./irecovery -c 'go'");
    }
}
