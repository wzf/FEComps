//
//  UIImage+FETools.m
//  Pods
//
//  Created by wangzhanfeng-PC on 15/7/24.
//
//

#import "UIImage+FETools.h"

@implementation UIImage (FETools)

UIImage * __getImageFromLayer(CALayer *layer) {
    UIGraphicsBeginImageContextWithOptions(layer.bounds.size, NO, [UIScreen mainScreen].scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    [layer renderInContext:context];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

#pragma mark -
#pragma mark 截屏
/// 截屏图片
UIImage * UIScreenShotImage(id<UIApplicationDelegate> delegate) {
    return __getImageFromLayer([delegate window].layer);
}

#pragma mark -
#pragma mark 图片获取
/// 根据名称获取图片
UIImage * UIImageNamedInBundle(NSString *imgName, NSBundle *bundle) {
    NSBundle *imgBundle = bundle ? bundle : [NSBundle mainBundle];
    NSString *path  = [imgBundle pathForResource:imgName ofType:nil];
    UIImage  *image = [UIImage imageWithContentsOfFile:path];
    return image;
}

/// 从.xcassets中加载
UIImage * UIImageNamedInAssets(NSString *imgName) {
    return [UIImage imageNamed:imgName];
}

+ (UIImage *)imageWithContentImage:(UIImage *)img fillColor:(UIColor *)aFillColor;
{
    CGSize size = img.size;
    // 图片图层：用来做蒙版
    CALayer *contentLayer = [CALayer layer];
    contentLayer.contents = (id)[img CGImage];
    contentLayer.frame    = CGRectMake(0, 0, size.width, size.height);
    contentLayer.shouldRasterize = YES;
    
    // 展示图片图层：用自定义的颜色填充
    CAShapeLayer *imgLayer = [CAShapeLayer layer];
    imgLayer.frame    = contentLayer.bounds;
    imgLayer.mask     = contentLayer;
    imgLayer.fillColor= aFillColor.CGColor;
    imgLayer.path     = [UIBezierPath bezierPathWithRect:contentLayer.bounds].CGPath;
    imgLayer.shouldRasterize = YES;
    
    // 将layer绘制成图片
//    UIGraphicsBeginImageContextWithOptions(size, NO, [UIScreen mainScreen].scale);
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    [imgLayer renderInContext:context];
//    
//    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
//    return image;
    
    return __getImageFromLayer(imgLayer);
}

- (UIImage *)imageFillByColor:(UIColor *)fillColor;
{
    return [UIImage imageWithContentImage:self fillColor:fillColor];
}

/**
 * 缩放图片
 */
+ (UIImage *)imageWithContentImage:(UIImage *)img fitSize:(CGSize)size;
{
    // 将layer绘制成图片
    UIGraphicsBeginImageContextWithOptions(size, NO, [UIScreen mainScreen].scale);
    [img drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}
- (UIImage *)imageFitToSize:(CGSize)size;
{
    return [UIImage imageWithContentImage:self fitSize:size];
}

/**
 * 圆角化图片
 */
+ (UIImage *)imageWithContentImage:(UIImage *)img roundCorner:(CGFloat)radius;
{
    CALayer *contentLayer = [CALayer layer];
    contentLayer.contents = (id)[img CGImage];
    contentLayer.frame    = CGRectMake(0, 0, img.size.width, img.size.height);
    contentLayer.shouldRasterize = YES;
    contentLayer.cornerRadius  = radius;
    contentLayer.masksToBounds = YES;
    
    return __getImageFromLayer(contentLayer);
}
- (UIImage *)imageRoundCorner:(CGFloat)radius;
{
    return [UIImage imageWithContentImage:self roundCorner:radius];
}

/**
 * 线
 */
+ (UIImage *)onePixelHorizonalLineWithWidth:(CGFloat)width color:(UIColor *)lineColor;
{
    return [self lineWithSize:CGSizeMake(width, 1/UIScreenScale) color:lineColor];
}
+ (UIImage *)onePixelVerticalLineWithHeight:(CGFloat)height  color:(UIColor *)lineColor;
{
    return [self lineWithSize:CGSizeMake(1/UIScreenScale, height) color:lineColor];
}
+ (UIImage *)lineWithSize:(CGSize)size color:(UIColor *)lineColor;
{
    CALayer *contentLayer = [CALayer layer];
    contentLayer.backgroundColor = lineColor.CGColor;
    contentLayer.frame = CGRectMake(0, 0, size.width, size.height);
    
    return __getImageFromLayer(contentLayer);
}
@end
