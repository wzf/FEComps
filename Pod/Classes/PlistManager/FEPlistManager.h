//
//  FEPlistManager.h
//  Pods
//
//  Created by wangzhanfeng-PC on 16/1/29.
//
//

#import <Foundation/Foundation.h>

@interface FEPlistManager : NSObject

//
+ (NSUserDefaults *)userDefault;
+ (id)userDefaultValueForKey:(NSString *)aKey;
+ (void)syncValue:(id)value forKey:(NSString *)aKey;

@end
