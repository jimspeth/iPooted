//
//  PootAppDelegate.m
//  Poot
//
//  Created by Jimco on 9/12/08.
//  Copyright Jim Speth, 2008. All rights reserved.
//

#import "PootAppDelegate.h"
#import "PootViewController.h"

@implementation PootAppDelegate

- (void)applicationDidFinishLaunching:(UIApplication *)application
{
    self.window.frame = [UIScreen mainScreen].bounds;
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
}

- (IBAction)playOne:(id)sender
{
    static SystemSoundID soundID[9] = {0, 0, 0, 0, 0, 0, 0, 0, 0};
    int i = arc4random() % 8;
    if (!soundID[i]) {
        AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%d", i + 1] ofType:@"caff"]], &soundID[i]);
    }
    if (soundID[i]) {
        AudioServicesPlaySystemSound(soundID[i]);
    }
}

@end
