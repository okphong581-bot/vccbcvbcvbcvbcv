#import "AppDelegate.h"
#import "AOTFloatingMenu.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [[UIViewController alloc] init];
    AOTFloatingMenu *menu = [[AOTFloatingMenu alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window addSubview:menu];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
