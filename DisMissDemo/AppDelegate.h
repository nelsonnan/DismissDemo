//
//  AppDelegate.h
//  DisMissDemo
//
//  Created by Nelson on 16/9/10.
//  Copyright © 2016年 Nelson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) UIViewController *rootVC1;
@property (nonatomic, strong) UIViewController *rootVC3;
@property (nonatomic, strong) UIViewController *rootVC2;

@property (nonatomic, strong) UIViewController *rootVCBase;
@property (nonatomic, strong) NSString *vcName;
#warning   跳转界面时必须设定目标界面的
@end

