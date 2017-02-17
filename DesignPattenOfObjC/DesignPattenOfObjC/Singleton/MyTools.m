//
//  MyTools.m
//  DesignPattenOfObjC
//
//  Created by zxj on 17/2/17.
//  Copyright © 2017年 zxj. All rights reserved.
//

#import "MyTools.h"

static MyTools *tools;

@implementation MyTools

#pragma mark - 在ios中，所有对象的内存空间的分配最终都会调用allocwithzone方法

+ (id)allocWithZone:(struct _NSZone *)zone{
    
    static MyTools *tools;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        tools = [super allocWithZone:zone];
    });
    return tools;
}

+ (instancetype)sharedTools{
    
    return [[self alloc]init];
}

#pragma mark - init方法可选实现，如果需要在init里面做相关初始化工作的话，标准写法最好加上init方法

- (instancetype)init{
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (tools == nil) {
            tools = [super init];
        }
    });
    return tools;
}

//- (id)copy{
//
//    return self;
//}

@end
