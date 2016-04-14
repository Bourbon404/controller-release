//
//  ViewController.m
//  lala
//
//  Created by ZhengWei on 16/4/14.
//  Copyright © 2016年 Bourbon. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"
@interface ViewController ()<FourthViewControllerDelegate>
@property (nonatomic,strong) FourthViewController *fourth;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor redColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
//    [self functoinOne];
//    [self functionTwo];
    [self functionThree];
}

-(void)functoinOne
{
    //会释放
    SecondViewController *second = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:second animated:YES];
}
-(void)functionTwo
{
    //会释放
    ThirdViewController *third = [[ThirdViewController alloc] init];
    [self addChildViewController:third];
    third.view.frame = self.view.bounds;
    [self.view addSubview:third.view];
}
-(void)functionThree
{
    //不在回调方法里面释放该对象就不会释放
    [self addChildViewController:self.fourth];
    [self.view addSubview:self.fourth.view];
}
-(FourthViewController *)fourth
{
    if (!_fourth) {
        _fourth = [[FourthViewController alloc] init];
        [_fourth setDelegate:self];
        _fourth.view.frame = self.view.bounds;
    }
    return _fourth;
}
-(void)doSomeThing
{
    self.fourth = nil;
}
@end
