//
//  RootViewController.m
//  DisMissDemo
//
//  Created by Nelson on 16/9/10.
//  Copyright © 2016年 Nelson. All rights reserved.
//

#import "RootViewController.h"

@implementation RootViewController


-(void)dealloc
{
    NSLog(@"Dealloc->%@",NSStringFromClass([self class]));


}

-(void)presentViewBuild:(NSString *)vcNameString
{
    Class vcClass = NSClassFromString(vcNameString);
    id vc = [[vcClass alloc] initWithNibName:nil bundle:nil];
    [self presentViewController:vc animated:NO completion:Nil];
}
@end
