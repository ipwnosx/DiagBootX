//
//  ViewController.h
//  DiagBootX
//
//  Created by James Duffy on 02/02/2020.
//  Copyright © 2020 James Duffy. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

@property (weak) IBOutlet NSButton *Go;
- (IBAction)runc:(id)sender;

@property (weak) IBOutlet NSTextField *Debug;

@property (weak) IBOutlet NSTextField *BBar;

@property (weak) IBOutlet NSProgressIndicator *Progress;

@property (weak) IBOutlet NSProgressIndicator *ProgressCircle;



@end

