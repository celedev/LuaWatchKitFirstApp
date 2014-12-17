//
//  DetailController.h
//  WatchApp1
//
//  Created by Jean-Luc on 17/12/2014.
//  Copyright (c) 2014 Celedev. All rights reserved.
//

#import <WatchKit/WatchKit.h>

@interface DetailController : WKInterfaceController

@property (weak, nonatomic) IBOutlet WKInterfaceLabel *nameLabel;
@property (weak, nonatomic) IBOutlet WKInterfaceImage *image;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *descriptionLabel;
@end
