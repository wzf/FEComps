//
//  FEFileManager.m
//  Pods
//
//  Created by wangzhanfeng-PC on 15/7/24.
//
//

#import "FEFileManager.h"

@implementation FEFileManager

+ (NSString *)documentRootPath;
{
    return NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
}

+ (NSString *)pathAppendingToDocument:(NSString *)path;
{
    return [[self documentRootPath] stringByAppendingPathComponent:path];
}

+ (BOOL)exsitFileAtPath:(NSString *)filePath;
{
    BOOL isDirectory = YES;
    BOOL pathExsit = [[NSFileManager defaultManager] fileExistsAtPath:filePath isDirectory:&isDirectory];
    return (pathExsit && isDirectory == NO);
}

+ (BOOL)exsitDirectoryAtPath:(NSString *)filePath;
{
    BOOL isDirectory = NO;
    BOOL pathExsit = [[NSFileManager defaultManager] fileExistsAtPath:filePath isDirectory:&isDirectory];
    return (pathExsit && isDirectory == YES);
}

@end
