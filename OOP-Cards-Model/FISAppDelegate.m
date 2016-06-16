//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISCard.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    FISCard *firstCard =[[FISCard alloc]init];
    NSLog(@"%@", firstCard.description);
    
    
    
    
    
    
    
    
    return YES;
}

@end
