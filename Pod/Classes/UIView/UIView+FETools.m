//
//  UIView+FETools.m
//  Pods
//
//  Created by wangzhanfeng-PC on 15/7/24.
//
//

#import "UIView+FETools.h"

@implementation UIView (FETools)

- (void)roundCorner:(CGFloat)corner;
{
    [self roundCorner:corner boderColor:nil width:0];
}

- (void)roundCorner:(CGFloat)corner boderColor:(UIColor *)color width:(CGFloat)width;
{
    self.layer.cornerRadius = corner;
    self.layer.borderColor  = color.CGColor;
    self.layer.borderWidth  = width;
    self.layer.masksToBounds= YES;
}


@end
