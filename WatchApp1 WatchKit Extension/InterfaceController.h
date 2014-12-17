//
//  InterfaceController.h
//  WatchApp1 WatchKit Extension
//
//  Created by Jean-Luc on 20/11/2014.
//  Copyright (c) 2014 Celedev. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController : WKInterfaceController

@property (weak, nonatomic) IBOutlet WKInterfaceLabel *label;
@property (weak, nonatomic) IBOutlet WKInterfaceButton *nextButton;
@property (weak, nonatomic) IBOutlet WKInterfaceButton *previousButton;
@property (weak, nonatomic) IBOutlet WKInterfaceGroup *imageGroup;

- (IBAction)showNext;
- (IBAction)showPrevious;

@end
