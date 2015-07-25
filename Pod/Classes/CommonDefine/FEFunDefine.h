//
//  FEFunDefine.h
//  Pods
//
//  Created by wangzhanfeng-PC on 15/7/24.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#ifndef Pods_FEFunDefine_h
#define Pods_FEFunDefine_h

//* block中用到的weakSelf *//
#ifndef WEAKSELF
#define WEAKSELF __weak typeof(self) weakSelf = self;
#endif


//** Log **//
//#ifndef DLog
#ifdef DEBUG
    #define DLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ## __VA_ARGS__);
#else
    #define DLog(...)
#endif


//** UIColor **//
#define RGB(r, g, b)     [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1]
#define RGBA(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]
#define ColorHex(rgb) [UIColor colorWithRed : ((rgb) & 0xFF0000 >> 16) / 255.0 green : ((rgb) & 0xFF00 >> 8) / 255.0 blue : ((rgb) & 0xFF) / 255.0 alpha : 1.0]


//** JSON跟Object互转 **//
#define JSON_obj2str(object) [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:object options:NSJSONWritingPrettyPrinted error:nil] encoding:NSUTF8StringEncoding]
#define JSON_str2obj(str)    [NSJSONSerialization JSONObjectWithData:[str dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingAllowFragments error:nil]

//** 【NSArray -> NSMutableArray】 【NSDictionary -> NSMutableDictionary】 **//
#define NSMutableArray(array) [NSMutableArray arrayWithArray:array]
#define NSMutableDictionary(dictionary) [NSMutableDictionary dictionaryWithDictionary:dictionary]


//** 路径 **//
#define DocumentPath NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0]
#define PrintDocumentPath NSLog(@"%@",DocumentPath)

#endif
