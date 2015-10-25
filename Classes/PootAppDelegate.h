//
//  PootAppDelegate.h
//  Poot
//
//  Created by Jimco on 9/12/08.
//  Copyright Jim Speth, 2008. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@class PootViewController;

@interface PootAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, strong) IBOutlet UIWindow *window;
@property (nonatomic, strong) IBOutlet PootViewController *viewController;

- (IBAction)playOne:(id)sender;

@end
