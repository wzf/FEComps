//
//  UIView+FETools.h
//  Pods
//
//  Created by wangzhanfeng-PC on 15/7/24.
//
//

#import <UIKit/UIKit.h>

@interface UIView (FETools)

/**
 * 圆角化
 */
- (void)roundCorner:(CGFloat)corner;
- (void)roundCorner:(CGFloat)corner boderColor:(UIColor *)color width:(CGFloat)width;

@end
