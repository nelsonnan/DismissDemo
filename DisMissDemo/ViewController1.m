//
//  ViewController.m
//  DisMissDemo
//
//  Created by Nelson on 16/9/10.
//  Copyright © 2016年 Nelson. All rights reserved.
//

#import "ViewController1.h"
#import "AppDelegate.h"

@interface ViewController1 ()

@end

@implementation ViewController1
-(void)viewWillAppear:(BOOL)animated
{
    AppDelegate *appDelgate=(AppDelegate *)[UIApplication sharedApplication].delegate;
    if (![NSStringFromClass([self class]) isEqualToString:appDelgate.vcName]) {
        [self dismissViewControllerAnimated:NO completion:NULL];
        
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor yellowColor];
    UIButton *backbtn=[UIButton buttonWithType:UIButtonTypeCustom];
    backbtn.frame=CGRectMake(0, 0, 50, 50);
    backbtn.backgroundColor=[UIColor greenColor];
    [backbtn setTitle:@"Back" forState:UIControlStateNormal];
    [self.view addSubview:backbtn];
    [backbtn addTarget:self action:@selector(dismiss) forControlEvents:UIControlEventTouchUpInside];

    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame=CGRectMake(100, 100, 100, 50);
    btn.backgroundColor=[UIColor cyanColor];
    [btn setTitle:@"下一页面" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(preview) forControlEvents:UIControlEventTouchUpInside];

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)preview
{
    AppDelegate *appDelgate=(AppDelegate *)[UIApplication sharedApplication].delegate;
    appDelgate.vcName=@"ViewController2";
    [self presentViewBuild:@"ViewController2"];
    

}

-(void)dismiss
{
    AppDelegate *appDelgate=(AppDelegate *)[UIApplication sharedApplication].delegate;
    appDelgate.vcName=@"RootVC2";
    [self dismissViewControllerAnimated:NO completion:NULL];
}

@end
