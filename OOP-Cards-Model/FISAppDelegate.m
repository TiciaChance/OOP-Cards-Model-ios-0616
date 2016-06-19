//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISCard.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    FISCard *card = [[FISCard alloc]init];
    NSLog(@"%@", card.description);
    
     
    
    return YES;
}



@end

