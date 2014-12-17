//
//  MapController.m
//  WatchApp1
//
//  Created by Jean-Luc on 25/11/2014.
//  Copyright (c) 2014 Celedev. All rights reserved.
//

#import "MapController.h"

@interface MapController ()
@property (weak, nonatomic) IBOutlet WKInterfaceMap *map;
@property (weak, nonatomic) IBOutlet WKInterfaceButton *hereButton;

@end

@implementation MapController

- (instancetype) initWithContext:(id)context
{
    self= [super initWithContext:context];
    if (self != nil) {
        
    }
    return self;
}

- (IBAction)showApple {
}

- (IBAction)showRennes {
}

- (IBAction)zoomIn {
}

- (IBAction)zoomOut {
}

@end
