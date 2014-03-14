//
//  Echo.m
//  HelloWorld
//
//  Created by Renan Veloso Silva on 14/03/14.
//
//

#import "Echo.h"

@implementation Echo
    
-(void)echo:(CDVInvokedUrlCommand *)command{
    CDVPluginResult* pluginResult = nil;
    NSString* echo = [command.arguments objectAtIndex:0];
    
    if (echo != nil && [echo length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    
    [[[UIAlertView alloc] initWithTitle:@"echo" message:echo delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil] show];
}
    
-(void)echo2:(CDVInvokedUrlCommand *)command{
    NSString* echo = @"From iOS";
    
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:echo, @"ios", nil];
    
    CDVPluginResult *result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:dic];
    
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
    
    
}

@end
