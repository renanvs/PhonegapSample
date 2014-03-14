//
//  Utils.m
//  HelloWorld
//
//  Created by Renan Veloso Silva on 14/03/14.
//
//

#import "Utils.h"

@implementation Utils

@end


@implementation UIResponder (Aditions)
-(UIViewController *) findTopRootViewController {
    UIWindow *topWindow = [[UIApplication sharedApplication] keyWindow];
    
    if (topWindow.windowLevel != UIWindowLevelNormal) {
        NSArray *windows = [[UIApplication sharedApplication] windows];
        
        for(topWindow in windows) {
            if (topWindow.windowLevel == UIWindowLevelNormal) {
                break;
            }
        }
    }
    
    UIView *rootView = nil;
    
    if ([[topWindow subviews] count] != 0){
        rootView = [[topWindow subviews] objectAtIndex:0];
    }
    
    id nextResponder = [rootView nextResponder];
    
    return [nextResponder isKindOfClass:[UIViewController class]]
    ? nextResponder
    : nil;
}
@end
