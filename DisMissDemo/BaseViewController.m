//
//  BaseViewController.m
//  DisMissDemo
//
//  Created by Nelson on 16/9/10.
//  Copyright © 2016年 Nelson. All rights reserved.
//

#import "BaseViewController.h"
#import "AppDelegate.h"
#import "BaseViewController.h"
@implementation BaseViewController


-(void)viewDidLoad
{
    self.view.backgroundColor=[UIColor whiteColor];


    
}


-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];

    AppDelegate *appDelgate=(AppDelegate *)[UIApplication sharedApplication].delegate;
    if ([appDelgate.vcName isEqualToString:@"RootVC1"]) {
        [self presentViewController:appDelgate.rootVC1 animated:NO completion:NULL];
    }
    else if ([appDelgate.vcName isEqualToString:@"RootVC2"]) {
        [self presentViewController:appDelgate.rootVC2 animated:NO completion:NULL];
    }
    else if ([appDelgate.vcName isEqualToString:@"RootVC3"]) {
        [self presentViewController:appDelgate.rootVC3 animated:NO completion:NULL];
    }
    else{
        Class vcClass = NSClassFromString(appDelgate.vcName);
        id vc = [[vcClass alloc] initWithNibName:nil bundle:nil];
        [self presentViewController:vc animated:NO completion:Nil];
    }

}

-(void)dealloc
{
    NSLog(@"Dealloc->%@",NSStringFromClass([self class]));

    
}
@end
