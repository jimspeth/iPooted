//
//  PootAppDelegate.m
//  Poot
//
//  Created by Jimco on 9/12/08.
//  Copyright Jim Speth, 2008. All rights reserved.
//

#import "PootAppDelegate.h"
#import "PootViewController.h"

static __inline__ int SSRandomIntBetween(int a, int b)
{
    int range = b - a < 0 ? b - a - 1 : b - a + 1;
    int value = (int)(range * ((float)random() / (float)LONG_MAX));
    return value == range ? a : a + value;
}

@implementation PootAppDelegate

- (void)applicationDidFinishLaunching:(UIApplication *)application
{
    srandomdev();
    
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleBlackOpaque];
    [[UIApplication sharedApplication] setStatusBarHidden:NO animated:YES];
    
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
}

- (IBAction)playOne:(id)sender
{
    static SystemSoundID soundID[9] = {0, 0, 0, 0, 0, 0, 0, 0, 0};
    int i = SSRandomIntBetween(0, 8);
    if (!soundID[i]) {
        AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%d", i + 1] ofType:@"caff"]], &soundID[i]);
    }
    if (soundID[i]) {
        AudioServicesPlaySystemSound(soundID[i]);
    }
}

@end
