//
//  BootLogic.m
//  TechmasterApp
//
//  Created by techmaster on 9/7/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

#import "BootLogic.h"
#import "MainScreen.h"


@implementation BootLogic
+ (void) boot: (UIWindow*) window
{
    MainScreen* mainScreen = [[MainScreen alloc] initWithStyle:UITableViewStyleGrouped];
    //--------- From this line, please customize your menu data -----------
    
    NSDictionary* quicksortDemo = @{SECTION: @"QuickSort Demo", MENU: @[
                                            @{TITLE: @"QuickSort Number", CLASS: @"QuickSortNumber"},
                                            @{TITLE: @"QuickSort String", CLASS: @"QuickSortNSString"}
                                     ]};
    
    mainScreen.menu = @[quicksortDemo];
    mainScreen.title = @"Bootstrap App";
    mainScreen.about = @"This is demo bootstrap demo app. It is collection of sample code of AVFoundation";
    //--------- End of customization -----------
    UINavigationController* nav = [[UINavigationController alloc] initWithRootViewController: mainScreen];
    
    window.rootViewController = nav;
}
@end
