//
//  ManagerView.m
//  HelloWorld
//
//  Created by Renan Veloso Silva on 14/03/14.
//
//

#import "ManagerView.h"
#import "ExampleViewController.h"
#import "AppDelegate.h"

@implementation ManagerView
    
-(void)showView:(CDVInvokedUrlCommand *)command{
    AppDelegate *delegate = [[UIApplication sharedApplication] delegate];
    ExampleViewController *evc = [[ExampleViewController alloc] init];
    
    CDVPluginResult *result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [[self commandDelegate]sendPluginResult:result callbackId:command.callbackId];
    UIView *sampleView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [sampleView setBackgroundColor:[UIColor redColor]];
    
   // [delegate.viewController.view addSubview:sampleView];
    
    [delegate.viewController presentViewController:evc animated:YES completion:nil];
}

@end



