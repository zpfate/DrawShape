
//
//  ShapeView.m
//  DrawShape
//
//  Created by Twisted Fate on 2020/4/28.
//  Copyright © 2020 Twisted Fate. All rights reserved.
//

#import "ShapeView.h"

@interface ShapeView ()

@property (nonatomic, strong) NSString *typeStr;

@end

@implementation ShapeView

- (instancetype)initWithFrame:(CGRect)frame typeStr:(NSString *)typeStr {
    self = [super initWithFrame:frame];
    if (self) {
        _typeStr = typeStr;
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    
    
    CAShapeLayer *line = [CAShapeLayer layer];
    line.strokeColor = [UIColor redColor].CGColor;
    line.fillColor = [UIColor clearColor].CGColor;
    line.lineWidth = 10.5f;

    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(100,100)];
    [path addLineToPoint:CGPointMake(200,100)];

    line.path = [path CGPath];
    [self.layer addSublayer:line];

    
//    if ([self.typeStr isEqualToString:kDrawShapeLine]) {
//        [self drawLine];
//    } else if ([self.typeStr isEqualToString:kDrawShapeCircle]) {
//        [self drawCircle];
//    } else if ([self.typeStr isEqualToString:kDrawShapeRectangle]) {
//        [self drawRectangle];
//    }
}

// 绘制线条
- (void)drawLine {
    
    // 获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    // 设置线框颜色
    CGContextSetStrokeColorWithColor(ctx, [UIColor redColor].CGColor);
    // 设置线宽
    CGContextSetLineWidth(ctx, 2.f);
    // 设置线条起点
    CGContextMoveToPoint(ctx, 150, 100);
    // 设置线条终点
    CGContextAddLineToPoint(ctx, 150, 350);
    CGContextStrokePath(ctx);
    
    // 记录上下文
    CGContextSaveGState(ctx);
    
    CGContextSetStrokeColorWithColor(ctx, [UIColor blueColor].CGColor);
    CGContextSetLineWidth(ctx, 4);
    CGContextMoveToPoint(ctx, 200, 100);
    CGContextAddLineToPoint(ctx, 200, 350);
    CGContextMoveToPoint(ctx, 250, 100);
    CGContextAddLineToPoint(ctx, 250, 350);
    CGContextStrokePath(ctx);
    // 恢复图形上下文
    CGContextRestoreGState(ctx);
    /**
     * 第二种方法绘制线条
        CGPoint points[2];
        points[0] = CGPointMake(10, 30);
        points[1] = CGPointMake(10, 50);
        CGContextAddLines(ctx, points, 2);
     */
    // 绘制
    CGContextStrokePath(ctx);
}
// 绘制圆形
- (void)drawCircle {
    
    // 上下文
     CGContextRef ctx = UIGraphicsGetCurrentContext();
     // 设置填充色
     CGContextSetFillColorWithColor(ctx, [UIColor blueColor].CGColor);
     // 设置线框颜色
     CGContextSetStrokeColorWithColor(ctx, [UIColor redColor].CGColor);
    
//    CGContextStrokec
}

// 绘制矩形
- (void)drawRectangle {
    
    // 上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    // 设置填充色
    CGContextSetFillColorWithColor(ctx, [UIColor blueColor].CGColor);
    // 设置线框颜色
    CGContextSetStrokeColorWithColor(ctx, [UIColor redColor].CGColor);
    // 矩形
    CGContextStrokeRect(ctx, CGRectMake(100, 200, 100, 100));
    CGContextFillPath(ctx);
    
    
}

@end
