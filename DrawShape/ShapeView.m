
//
//  ShapeView.m
//  DrawShape
//
//  Created by Twisted Fate on 2020/4/28.
//  Copyright © 2020 Twisted Fate. All rights reserved.
//

#import "ShapeView.h"

@implementation ShapeView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    
    // 获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(ctx, [UIColor redColor].CGColor)
    
    
}

@end
