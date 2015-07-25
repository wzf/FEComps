//
//  FEFileManager.h
//  Pods
//
//  Created by wangzhanfeng-PC on 15/7/24.
//
//

#import <Foundation/Foundation.h>

@interface FEFileManager : NSObject

// Document路径
+ (NSString *)documentRootPath;

// 在
+ (NSString *)pathAppendingToDocument:(NSString *)path;

+ (BOOL)exsitFileAtPath:(NSString *)filePath;
+ (BOOL)exsitDirectoryAtPath:(NSString *)filePath;
@end
