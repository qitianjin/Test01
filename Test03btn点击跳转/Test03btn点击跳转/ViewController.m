//
//  ViewController.m
//  Test03btn点击跳转
//
//  Created by qitianjin on 16/4/14.
//  Copyright © 2016年 qitianjin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,assign) BOOL isExist;
//为什么把btn2和3设置成指针,因为在方法之外需要访问这两个参数.
@property (nonatomic,strong) UIButton *btn2;

@property (nonatomic,strong) UIButton *btn3;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *btn1 = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    btn1.backgroundColor = [UIColor grayColor];
    //设置一个监听事件,监听按钮的点击事件
    [btn1 addTarget:self action:@selector(btn1Click) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn1];

}

-(void)btn1Click{
    
    if (!self.isExist) {
        self.isExist = YES;
        
        //设置第二个按钮的点击事件
        self.btn2= [[UIButton alloc]initWithFrame:CGRectMake(200, 200, 100, 100)];
        self.btn2.backgroundColor = [UIColor redColor];
        [self.btn2 addTarget:self action:@selector(btn2Click) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:self.btn2];
        
        //设置第三个按钮的点击事件
        self.btn3 = [[UIButton alloc]initWithFrame:CGRectMake(100, 300, 100, 100)];
        self.btn3.backgroundColor = [UIColor blueColor];
        [self.btn3 addTarget:self action:@selector(btn3Click) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:self.btn3];
    }else{
    
    
        [self.btn2 removeFromSuperview];
        
        [self.btn3 removeFromSuperview];
        
        self.isExist = NO;
        
    }
    
}

-(void)btn2Click{
    NSLog(@"btn2");
}
-(void)btn3Click{
    NSLog(@"btn3");
}
@end
