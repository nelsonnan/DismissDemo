//
//  RootViewController.h
//  DisMissDemo
//
//  Created by Nelson on 16/9/10.
//  Copyright © 2016年 Nelson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController
@property (nonatomic,strong)NSString *rootViewControllerName;

@property (nonatomic,strong)NSString *willDismissViewControllerName;
-(void)presentViewBuild:(NSString *)vcNameString;


@end
