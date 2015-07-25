//
//  UIImageView+FETools.m
//  Pods
//
//  Created by wangzhanfeng-PC on 15/7/24.
//
//

#import "UIImageView+FETools.h"

@implementation UIImageView (FETools)

- (void)setImageAndHighlightedImage:(UIImage *)image;
{
    [self setImage:image];
    [self setHighlightedImage:image];
}

@end
