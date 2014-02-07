//
//  RITAppDelegateAnalog.m
//  10NotificationsTestHW04
//
//  Created by Aleksandr Pronin on 07.02.14.
//  Copyright (c) 2014 Pronin Alexander. All rights reserved.
//

#import "RITAppDelegateAnalog.h"

@implementation RITAppDelegateAnalog

- (id)init
{
    self = [super init];
    if (self) {
        NSNotificationCenter* nc = [NSNotificationCenter defaultCenter];
        
        [nc addObserver:self
               selector:@selector(DidFinishLaunchingNotification:)
                   name:UIApplicationDidFinishLaunchingNotification
                 object:nil];
        
        [nc addObserver:self
               selector:@selector(WillResignActiveNotification:)
                   name:UIApplicationWillResignActiveNotification
                 object:nil];
        
        [nc addObserver:self
               selector:@selector(DidEnterBackgroundNotification:)
                   name:UIApplicationDidEnterBackgroundNotification
                 object:nil];
        
        [nc addObserver:self
               selector:@selector(WillEnterForegroundNotification:)
                   name:UIApplicationWillEnterForegroundNotification
                 object:nil];
        
        [nc addObserver:self
               selector:@selector(DidBecomeActiveNotification:)
                   name:UIApplicationDidBecomeActiveNotification
                 object:nil];
        
        [nc addObserver:self
               selector:@selector(WillTerminateNotification:)
                   name:UIApplicationWillTerminateNotification
                 object:nil];
    }
    return self;
}

- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void) DidFinishLaunchingNotification: (NSNotification*) notification {
    
    NSLog(@"DidFinishLaunchingNotification Analog");
    
}

- (void) WillResignActiveNotification: (NSNotification*) notification {
    
    NSLog(@"WillResignActiveNotification Analog");
    
}

- (void) DidEnterBackgroundNotification: (NSNotification*) notification {
    
    NSLog(@"DidEnterBackgroundNotification Analog");
    
}

- (void) WillEnterForegroundNotification: (NSNotification*) notification {
    
    NSLog(@"WillEnterForegroundNotification Analog");
    
}

- (void) DidBecomeActiveNotification: (NSNotification*) notification {
    
    NSLog(@"DidBecomeActiveNotification Analog");
    
}

- (void) WillTerminateNotification: (NSNotification*) notification {
    
    NSLog(@"WillTerminateNotification Analog");
    
}

@end
