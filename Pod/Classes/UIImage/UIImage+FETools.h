//
//  UIImage+FETools.h
//  Pods
//
//  Created by wangzhanfeng-PC on 15/7/24.
//
//

#import <UIKit/UIKit.h>

@interface UIImage (FETools)

#define UIScreenScale [UIScreen mainScreen].scale

/**
 * 截屏图片
 */
UIImage * UIScreenShotImage(id<UIApplicationDelegate> delegate);

/**
 * 根据名称获取图片
 */
UIImage * UIImageNamedInBundle(NSString *imgName, NSBundle *bundle);
UIImage * UIImageNamedInAssets(NSString *imgName);

/**
 * 将img对应的图片用aFillColor的颜色来填充
 */
+ (UIImage *)imageWithContentImage:(UIImage *)img fillColor:(UIColor *)aFillColor;
- (UIImage *)imageFillByColor:(UIColor *)fillColor;

/**
 * 缩放图片
 */
+ (UIImage *)imageWithContentImage:(UIImage *)img fitSize:(CGSize)size;
- (UIImage *)imageFitToSize:(CGSize)size;

/**
 * 圆角化图片
 */
+ (UIImage *)imageWithContentImage:(UIImage *)img roundCorner:(CGFloat)radius;
- (UIImage *)imageRoundCorner:(CGFloat)radius;

/**
 * 线
 */
+ (UIImage *)onePixelHorizonalLineWithWidth:(CGFloat)width color:(UIColor *)lineColor;
+ (UIImage *)onePixelVerticalLineWithHeight:(CGFloat)height  color:(UIColor *)lineColor;
+ (UIImage *)lineWithSize:(CGSize)size color:(UIColor *)lineColor;
@end
