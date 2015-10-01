//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISCard.h"
#import "FISCardDeck.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    FISCard *card = [[FISCard alloc] init];
    NSLog(@"%@", card.description);
    
    FISCardDeck *deck = [[FISCardDeck alloc] init];
    NSLog(@"%@", deck.description);
    
    [deck resetDeck];
    NSLog(@"%@", deck.description);
    
    
    return YES;
}

@end
