//
//  ManagerView.h
//  HelloWorld
//
//  Created by Renan Veloso Silva on 14/03/14.
//
//

#import <Foundation/Foundation.h>
#import <Cordova/CDV.h>
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface ManagerView : CDVPlugin

-(void)showView:(CDVInvokedUrlCommand*)command;
    
@end



