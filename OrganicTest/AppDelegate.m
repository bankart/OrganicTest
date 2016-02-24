//
//  AppDelegate.m
//  OrganicTest
//
//  Created by lee taehoon on 12. 6. 14..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

#import "Constants.h"
#import "Phosphate.h"
#import "ChainDelegate.h"
#import "Nucleotide.h"
#import "Nucleo.h"


@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    NSLog(@"int max: %i", INT_MAX);
    
    NSTimeInterval start = [[NSDate date] timeIntervalSince1970];
    
    int capacity = 5, i = 0;
    for (i=0; i<capacity; i++) {
        [self createPhosphate];
    }
    
    NSTimeInterval end = [[NSDate date] timeIntervalSince1970];
    NSLog(@"total count: %f", [Nucleo NucleoTotal]);
    NSLog(@"total time: %f ms", end - start);
    
    return YES;
}

- (void)createPhosphate
{
    NSTimeInterval start = [[NSDate date] timeIntervalSince1970];
    
    int capacity = 10, i = 0;
    
    @try {
        
        NSMutableArray *chainDelegateTemp = [NSMutableArray arrayWithCapacity:capacity];
        Nucleotide *nucleoside = nil;
        for (i=0; i<capacity; i++) {
            nucleoside = [[Nucleotide alloc] init];
            [chainDelegateTemp addObject:nucleoside];
        }
        
        NSArray *nucleosideTypeTemp = [NSArray arrayWithObjects:[NSNumber numberWithInt:kNucleoside_Mono], [NSNumber numberWithInt:kNucleoside_Di], [NSNumber numberWithInt:kNucleoside_Tri], nil];
        
        id<ChainDelegate>chain = NULL;
        for (i=0; i<chainDelegateTemp.count; i++) {
            chain = [chainDelegateTemp objectAtIndex:i];
            [chain executePhosphateChain:[(NSNumber *)[nucleosideTypeTemp objectAtIndex:arc4random()%nucleosideTypeTemp.count] intValue]];
        }
        
        for (i=0; i<capacity; i++) {
            nucleoside = [chainDelegateTemp objectAtIndex:i];
            NSLog(@"nucleoside: %@", [nucleoside.nucleo nucleoInfo]);
        }
        
    }
    @catch (NSException *exception) {
        NSLog(@"total count: %f", [Nucleo NucleoTotal]);
        NSLog(@"error: %@", exception);
    }
    @finally {
        NSTimeInterval end = [[NSDate date] timeIntervalSince1970];
        NSLog(@"total time: %f ms", end - start);
        
    }
    
    
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
