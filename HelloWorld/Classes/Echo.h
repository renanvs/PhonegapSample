//
//  Echo.h
//  HelloWorld
//
//  Created by Renan Veloso Silva on 14/03/14.
//
//

#import <Foundation/Foundation.h>
#import <Cordova/CDV.h>

@interface Echo : CDVPlugin
    
    - (void)echo:(CDVInvokedUrlCommand*)command;

@end
