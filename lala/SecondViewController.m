//
//  SecondViewController.m
//  lala
//
//  Created by ZhengWei on 16/4/14.
//  Copyright © 2016年 Bourbon. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImageView *image = [[UIImageView alloc] initWithFrame:self.view.bounds];
    [image setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"1" ofType:@"png"]]];
    [self.view addSubview:image];

}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{  
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)dealloc
{
    NSLog(@"进行了释放");
}

@end
