//
//  PootView.m
//  Poot
//
//  Created by Jimco on 9/12/08.
//  Copyright Jim Speth, 2008. All rights reserved.
//

#import "PootView.h"
#import "PootAppDelegate.h"

@implementation PootView

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    PootAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    [appDelegate playOne:self];
}

@end
