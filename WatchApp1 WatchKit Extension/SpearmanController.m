//
//  SpearmanController.m
//  WatchApp1
//
//  Created by Jean-Luc on 24/11/2014.
//  Copyright (c) 2014 Celedev. All rights reserved.
//

#import "SpearmanController.h"

@interface SpearmanController ()

@property (weak, nonatomic) IBOutlet WKInterfaceImage *walkerImage;

@end

@implementation SpearmanController

- (IBAction)walk {
    [self.walkerImage startAnimating];
}

- (IBAction)pause {
    [self.walkerImage stopAnimating];
}
- (IBAction)increaseSpeed {
}

- (IBAction)decreaseSpeed {
}

@end
