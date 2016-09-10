//
//  RootVC1.m
//  DisMissDemo
//
//  Created by Nelson on 16/9/10.
//  Copyright © 2016年 Nelson. All rights reserved.
//

#import "RootVC1.h"
#import "AppDelegate.h"
@implementation RootVC1
-(void)viewDidLoad
{
    self.view.backgroundColor=[UIColor yellowColor];

    UIButton *btn1=[UIButton buttonWithType:UIButtonTypeCustom];
    btn1.frame=CGRectMake(50, 200, 80, 50);
    [self.view addSubview:btn1];
    [btn1 addTarget:self action:@selector(vc1:) forControlEvents:UIControlEventTouchUpInside];
    btn1.backgroundColor=[UIColor purpleColor];
    UIButton *btn2=[UIButton buttonWithType:UIButtonTypeCustom];
    btn2.frame=CGRectMake(150, 200, 80, 50);
    [self.view addSubview:btn2];
    [btn2 addTarget:self action:@selector(vc2:) forControlEvents:UIControlEventTouchUpInside];
    btn2.backgroundColor=[UIColor redColor];
    UIButton *btn3=[UIButton buttonWithType:UIButtonTypeCustom];
    btn3.frame=CGRectMake(250, 200, 80, 50);
    [self.view addSubview:btn3];
    [btn3 addTarget:self action:@selector(vc3:) forControlEvents:UIControlEventTouchUpInside];
    btn3.backgroundColor=[UIColor greenColor];
    UIButton *btn4=[UIButton buttonWithType:UIButtonTypeCustom];
    btn4.frame=CGRectMake(100, 100, 300, 50);
    [self.view addSubview:btn4];
    [btn4 addTarget:self action:@selector(vc4:) forControlEvents:UIControlEventTouchUpInside];
    btn4.backgroundColor=[UIColor orangeColor];

}


-(void)vc1:(id)btn
{

    AppDelegate *appDelgate=(AppDelegate *)[UIApplication sharedApplication].delegate;
    appDelgate.vcName=@"RootVC1";
    [self dismissViewControllerAnimated:NO completion:NULL];

}


-(void)vc2:(id)btn
{
    AppDelegate *appDelgate=(AppDelegate *)[UIApplication sharedApplication].delegate;
    appDelgate.vcName=@"RootVC2";
    [self dismissViewControllerAnimated:NO completion:NULL];
}

-(void)vc3:(id)btn
{
    AppDelegate *appDelgate=(AppDelegate *)[UIApplication sharedApplication].delegate;
    appDelgate.vcName=@"RootVC3";
    [self dismissViewControllerAnimated:NO completion:NULL];

}

-(void)vc4:(id)btn
{
    AppDelegate *appDelgate=(AppDelegate *)[UIApplication sharedApplication].delegate;
    appDelgate.vcName=@"ViewController1";
    [self dismissViewControllerAnimated:NO completion:NULL];



}

@end
