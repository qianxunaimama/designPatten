//
//  ViewController.m
//  DesignPattenOfObjC
//
//  Created by zxj on 17/2/17.
//  Copyright © 2017年 zxj. All rights reserved.
//

#import "ViewController.h"
#import "MyTools.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    MyTools *tools = [[MyTools alloc]init];
    MyTools *toolObj = [[MyTools alloc]init];
    
    NSLog(@"000----%@",tools);
    NSLog(@"000----%@",toolObj);
    
    for (int i = 0; i<10; i++) {
        MyTools *obj = [MyTools sharedTools];
        NSLog(@"%d%d%d----%@",i,i,i,obj);
    }
}

@end
