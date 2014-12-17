//
//  InterfaceController.m
//  WatchApp1 WatchKit Extension
//
//  Created by Jean-Luc on 20/11/2014.
//  Copyright (c) 2014 Celedev. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController

- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    if (self){
        // Initialize variables here.
        // Configure interface objects here.
        NSLog(@"%@ initWithContext", self);
    }
    return self;
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    NSLog(@"%@ will activate", self);
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}

- (IBAction)showNext {
    
}

- (IBAction)showPrevious {
    
}

- (IBAction)deleteCharacter {
}

- (IBAction)pushDetailController {
}

- (IBAction)showModalControllers {
}

- (void) handleActionWithIdentifier:(NSString *)identifier forLocalNotification:(UILocalNotification *)localNotification
{
    NSLog(@"handleActionWithIdentifier:forLocalNotification: %@", identifier);
}

- (void) handleActionWithIdentifier:(NSString *)identifier forRemoteNotification:(NSDictionary *)remoteNotification
{
    NSLog(@"handleActionWithIdentifier:forLocalNotification: %@", identifier);
}

@end



