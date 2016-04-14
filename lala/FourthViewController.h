//
//  FourthViewController.h
//  lala
//
//  Created by ZhengWei on 16/4/14.
//  Copyright © 2016年 Bourbon. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol FourthViewControllerDelegate <NSObject>

-(void)doSomeThing;

@end
@interface FourthViewController : UIViewController
@property (nonatomic,weak) id<FourthViewControllerDelegate>delegate;

@end
