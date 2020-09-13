//
//  ViewController.m
//  DiagBootX
//
//  Created by James Duffy on 02/02/2020.
//  Copyright © 2020 James Duffy. All rights reserved.
//

#import "ViewController.h"
#import "StF.h"
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>

void StF(int debug);
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}
- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}




- (IBAction)runc:(id)sender {
    //Enter PwnedDFU
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(queue, ^{
        //do your work in the background here
        sleep(3);
        system("cd ~/Downloads/DiagBootX/Assets/;ls;./ipwndfu -p >/dev/null 2>&1");
        dispatch_async(dispatch_get_main_queue(), ^{
            //tell the main UI thread here
            self->_Debug.stringValue = @"Entering PWNED-DFU";
        });
    });
    //Patch Bootchain
    dispatch_queue_t queue1 = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(queue1, ^{
        sleep(10);
        system("date");
        NSLog(@"Debugging Active");
        NSLog(@"Patching Bootchain");
        system("cd ~/Downloads/DiagBootX/Assets/;ls;./ipwndfu --patch >/dev/null 2>&1");
        dispatch_async(dispatch_get_main_queue(), ^{
            //tell the main UI thread here
            self->_Debug.stringValue = @"Patching Bootchain";
        });
    });
    //Send iBSS
    dispatch_queue_t queue2 = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(queue2, ^{
        //do your work in the background here
        sleep(15);
        system("cd ~/Downloads/DiagBootX/Assets/;ls;./irecovery -f iboot.img4 >/dev/null 2>&1");
        dispatch_async(dispatch_get_main_queue(), ^{
            //tell the main UI thread here
            self->_Debug.stringValue = @"Working";
        });
    });
    
    //Send iBEC
    dispatch_queue_t queue3 = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(queue3, ^{
        //do your work in the background here
        sleep(20);
        system("cd ~/Downloads/DiagBootX/Assets/;ls;./irecovery -f ibec.img4 >/dev/null 2>&1");
        sleep(4);
        dispatch_async(dispatch_get_main_queue(), ^{
            //tell the main UI thread here
            self->_Debug.stringValue = @"Disconnect & Reconnect Lightning Now";
        });
    });
    
//    //testfunc
//    dispatch_async(dispatch_get_main_queue(), ^{
//        system("date");
//        //tell the main UI thread here
//        self->_Debug.stringValue = @"working";
//    });
    
    
    //Send Diags + launch
    dispatch_queue_t queue5 = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(queue5, ^{
        //do your work in the background here
        sleep(35);
        system("cd ~/Downloads/DiagBootX/Assets/;ls; printf '/send diag.img4\ngo\n/exit\n' | ./irecovery -s >/dev/null 2>&1");
        dispatch_async(dispatch_get_main_queue(), ^{
            //tell the main UI thread here
            self->_Debug.stringValue = @"Launching Diags";
            self->_Debug.stringValue = @"Done";
        });
    });
    
//        self->_Debug.stringValue = @"Remove Lightning";
//        NSLog(@"Remove Lightning");
//        sleep(3);
//        self->_Debug.stringValue = @"You have... 5 seconds to reconnect'";
//        sleep(1);
//        self->_Debug.stringValue = @"You have... 4 seconds to reconnect'";
//        sleep(1);
//        self->_Debug.stringValue = @"You have... 3 seconds to reconnect'";
//        sleep(1);
//        self->_Debug.stringValue = @"You have... 2 seconds to reconnect'";
//        sleep(1);
//        self->_Debug.stringValue = @"You have... 1 seconds to reconnect'";
//        sleep(3);
//        self->_Debug.stringValue = @"Diags Launching";
//        system("printf '/send diag.img4\ngo\n/exit\n' | ./irecovery -s");
}




//- (IBAction)runc:(id)sender {
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//
//        t1();
//        self->_Debug.stringValue = @"Debugging Active";
//        NSLog(@"Debugging Active");
//        sleep(2);
//        NSLog(@"Entering PWNED-DFU");
//        self->_Debug.stringValue = @"Entering PWNED-DFU";
//        system("./ipwndfu -p");
//        sleep(3);
//        NSLog(@"Patching Bootchain");
//        self->_Debug.stringValue = @"Patching Bootchain";
//        system("./ipwndfu --patch");
//        sleep(10);
//        self->_Debug.stringValue = @"Sending iBSS";
//        system("./irecovery -f ibss.img4");
//        sleep(3);
//        self->_Debug.stringValue = @"Sending iBEC";
//        system("./irecovery -f ibec.img4");
//        self->_Debug.stringValue = @"Remove Lightning";
//        NSLog(@"Remove Lightning");
//        sleep(3);
//        self->_Debug.stringValue = @"You have... 5 seconds to reconnect'";
//        sleep(1);
//        self->_Debug.stringValue = @"You have... 4 seconds to reconnect'";
//        sleep(1);
//        self->_Debug.stringValue = @"You have... 3 seconds to reconnect'";
//        sleep(1);
//        self->_Debug.stringValue = @"You have... 2 seconds to reconnect'";
//        sleep(1);
//        self->_Debug.stringValue = @"You have... 1 seconds to reconnect'";
//        sleep(3);
//        self->_Debug.stringValue = @"Diags Launching";
//        system("printf '/send diag.img4\ngo\n/exit\n' | ./irecovery -s");
//    });
//
//}
@end
